#include "thread.h"
#include "stdint.h"
#include "string.h"
#include "global.h"
#include "memory.h"
#include "interrupt.h"
#include "debug.h"

#define PG_SIZE 0x1000
#define DEBUG true
struct task_struct* main_thread;      //主线程PCB
struct list thread_ready_list;        //就绪序列
struct list thread_all_list;          //所有任务序列
static struct list_elem* thread_tag;  //保存队列中的线程节点

extern void switch_to(struct task_struct* cur,struct task_struct* next);


struct task_struct* running_thread() //获取当前线程PCB指针
{
	uint32_t esp;
	asm("mov %%esp,%0":"=g"(esp));
	return (struct task_struct*)(esp&0xFFFFF000);
}
/*由kernel thread 去执行 func(args)*/
static void kernel_thread(thread_func* func,void* args)
{
	//开启中断，防止func独占线程
	intr_enable();
	func(args);
}
/*
*init thread stack,
*put the functon to be executed and its arguments in thread stack;
*/
void thread_create(struct task_struct* pthread,thread_func func,void *args)
{
/*先预留中断使用栈的空间 */
	pthread->self_kstack -= sizeof(struct intr_struct);
	/*set aside space for the thread stack*/
	pthread->self_kstack -= sizeof(struct thread_stack);
	struct thread_stack * kernel_stack = (struct thread_stack*) pthread->self_kstack;
	kernel_stack->eip = kernel_thread;
	kernel_stack->function = func;
	kernel_stack->func_args =args;
	kernel_stack->ebp = kernel_stack->ebx = kernel_stack->esi = kernel_stack->edi = 0;
}
//init thread
void init_thread(struct task_struct *pthread,char* name,int prio)
{
	memset(pthread,0,sizeof(*pthread));
	strcpy(pthread->name,name);
	
	if(pthread == main_thread)
	{
		pthread->status = TASK_RUNNING;
	}
	else
	{
		pthread->status = TASK_READY;
	}
	pthread->self_kstack = (uint32_t)((uint32_t)pthread + PG_SIZE);
	pthread->status = TASK_RUNNING;
	pthread->priority = prio;
	pthread->ticks = prio;
	pthread->elapsed_ticks = 0;
	pthread->pgdir = NULL;
	pthread->stack_magic = 0x20220913; //Custom magic number
}
//create thread,name==name,arguments = args, excuted function == func,priority==prio
struct task_struct* thread_start(char* name,int prio,thread_func func,void* args)
{
	struct task_struct* thread = get_kernel_page(1);

	init_thread(thread,name,prio);
	thread_create(thread,func,args);

	//确保该线程之前不在队列中
	ASSERT(!elem_find(&thread_ready_list,&thread->general_tag));
	//加入就绪队列
	list_append(&thread_ready_list,&thread->general_tag);


	//确保该线程之前不在队列中
	ASSERT(!elem_find(&thread_all_list,&thread->all_list_tag));
	//加入队列
	list_append(&thread_all_list,&thread->all_list_tag);

	//asm volatile("movl %0,%%esp; pop %%ebp; pop %%ebx; pop %%edi; pop %%esi; ret" : : "g"(thread->self_kstack) :"memory"); //栈顶的位置为 thread->self_kstack 
	return thread;
}
/*将kernel中的main函数完善成主线程*/
static void make_main_thread()
{
	main_thread = running_thread();
	init_thread(main_thread,"main",31);

	//确保该线程之前不在队列中
	ASSERT(!elem_find(&thread_all_list,&main_thread->all_list_tag));
	//加入队列
	list_append(&thread_all_list,&main_thread->all_list_tag);
}
void schedule()
{
	ASSERT(intr_get_status()==INTR_OFF);

	struct task_struct* cur_thread = running_thread();

	if(cur_thread->status == TASK_RUNNING)
	{
		//若线程只是cpu时间到了,添加到就绪队列里


		ASSERT(!elem_find(&thread_ready_list,&cur_thread->general_tag));
		list_append(&thread_ready_list,&cur_thread->general_tag);
		cur_thread->ticks = cur_thread->priority;
		//将状态设置成就绪
		cur_thread->status = TASK_READY;

	}
	else
	{
		//需要某事件发生后才能运行，不需要加入队列
		
	}
	ASSERT(!list_empty(&thread_ready_list));
	thread_tag = NULL;
	thread_tag = list_pop(&thread_ready_list);
	struct task_struct *next = elem2entry(struct task_struct,general_tag,thread_tag);
	next->status = TASK_RUNNING;
	switch_to(cur_thread,next);
}
void thread_init()
{
	if(DEBUG)
	{
		put_str("thread init start\n");
	}
	list_init(&thread_ready_list);
	list_init(&thread_all_list);
	make_main_thread();
	if(DEBUG)
	{
		put_str("thread init end\n");
	}
}
//阻塞正在运行的线程，将状态设为stat
void thread_block(enum task_status stat)
{
	ASSERT(((stat == TASK_BLOCKED) || (stat == TASK_WAITING) || (stat == TASK_HANING)));
	enum intr_status old_status = intr_disable();
	struct task_struct *cur_thread = running_thread();
	cur_thread->status = stat;
	schedule();
	//等到线程被唤醒后，才能继续执行
	intr_set_status(old_status);
}
//将pthread从阻塞中解除
void thread_unblock(struct task_struct *pthread)
{
	ASSERT(((pthread->status == TASK_BLOCKED) || (pthread->status == TASK_WAITING) || 
	(pthread->status == TASK_HANING)));
	enum intr_status old_status = intr_disable();
	if (pthread->status != TASK_READY)
	{
		ASSERT(!elem_find(&thread_ready_list,&pthread->general_tag));
		if(elem_find(&thread_ready_list,&pthread->general_tag))
		{
			PANIC("thread_unblock:the thread is already in ready_list\n");
		}
		//将pthread放到就绪队列的最前面，尽快运行
		list_push(&thread_ready_list,&pthread->general_tag);
		pthread->status = TASK_READY;
	}
	intr_set_status(old_status);
	
}
#ifndef _THREAD_THREAD_H_
#define _THREAD_THREAD_H_
#include "stdint.h"
#include "list.h"
typedef void thread_func(void*);
/******************process and thread status*****************************/
enum task_status
{
	TASK_RUNNING,
	TASK_READY,
	TASK_BLOCKED,
	TASK_WAITING,
	TASK_HANING,
	TASK_DIED
};
/**************************** interrupt stack ***************************/
//protects the program's context when an interrupt occurs
struct intr_struct
{
	uint32_t vec_no;
	uint32_t edi;
	uint32_t esi;
	uint32_t ebp;
	uint32_t esp_dump;
	uint32_t ebx;
	uint32_t edx;
	uint32_t ecx;
	uint32_t eax;
	uint32_t gs;
	uint32_t fs;
	uint32_t es;
	uint32_t ds;

	uint32_t err_code;
	void (*eip)(void*);
	uint32_t cs;
	uint32_t eflsgs;
	void *   esp;
	uint32_t ss;
	
};
/*********************************thread stack******************************************/
struct thread_stack
{
	uint32_t ebp;
	uint32_t ebx;
	uint32_t edi;
	uint32_t esi;
/*
*线程第一次执行时，eip 指向待调用的函数 kernel_thread
*其他时候，eip 是指向 switch_ to 的返回地址
*/
	void (*eip)(thread_func* func,void* func_args);
/*以下仅供第一次被调度上 CPU 时使用*/
/************************************************************************/
/*
*参数 unused_retaddr 只为占位置充数为返回地址
*/
	void (*unused_retaddr);
	thread_func* function;
	void* func_args;
/*************************************************************************/
};
/********************************proccess or thread PCB********************************/
struct task_struct
{
	uint32_t* self_kstack;
	enum task_status status;
	uint8_t* priority;
	uint8_t ticks;				      //在cpu 运行的滴答数 看ticks 来判断是否用完了时间片
	uint32_t elapsed_ticks;                         //一共执行了多久	
	char name[8];

	struct list_elem general_tag;
	struct list_elem all_list_tag;
	
	uint32_t* pgdir;
	uint32_t stack_magic;
	
};

struct task_struct* running_thread(); //获取当前线程PCB指针
struct task_struct* thread_start(char* name,int prio,thread_func func,void* args);
void thread_init();
void schedule();
void thread_block(enum task_status stat);
//将pthread从阻塞中解除
void thread_unblock(struct task_struct *pthread);
#endif

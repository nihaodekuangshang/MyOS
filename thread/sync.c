#include "sync.h"
#include "list.h"
#include "stdint.h"
#include "thread.h"
#include "debug.h"
#include "interrupt.h"
void sema_init(struct semaphore *psema,uint8_t value)
{
	psema->value = value;
	list_init(&psema->waiters);
}
void lock_init(struct lock *plock)
{
	plock->holder = NULL;
	sema_init(&plock->semaphore,1);
	plock->holder_repeat_nr = 0;
}
void sema_down(struct semaphore* psema)
{
	enum intr_status old_status = intr_disable();
	struct task_struct *cur_thread = running_thread();
	while (psema->value == 0)
	{
		ASSERT(!elem_find(&psema->waiters,&cur_thread->general_tag));
		if(elem_find(&psema->waiters,&cur_thread->general_tag))
		{
			PANIC("sema_down:thread blocked has been in waiters");
		}
		list_append(&psema->waiters,&cur_thread->general_tag);
		thread_block(TASK_BLOCKED);

	}
	psema->value--;
	ASSERT(psema->value == 0);
	intr_set_status(old_status);
	
}
void sema_up(struct semaphore *psema)
{
	enum intr_status old_staus = intr_disable();
	if (!list_empty(&psema->waiters))
	{
		struct task_struct *blocked_thread = elem2entry(struct task_struct,general_tag,list_pop(&psema->waiters));
		thread_unblock(blocked_thread);

	}
	psema->value++;
	ASSERT(psema->value == 1);
	intr_set_status(old_staus);
}
void lock_acquire(struct lock* plock)
{
	//判断是否是锁持有者申请
	if (plock->holder != running_thread())
	{
		//若不是，信号量减
		sema_down(&plock->semaphore);
		//阻塞完成后设置持有者
		plock->holder == running_thread();
		ASSERT(plock->holder_repeat_nr == 0);
		plock->holder_repeat_nr = 1;
	}
	else
	{
		plock->holder_repeat_nr++;
	}
	
	
}
void lock_release(struct lock* plock)
{
	ASSERT(plock->holder == running_thread());
	if(plock->holder_repeat_nr > 1)
	{
		plock->holder_repeat_nr--;
	}
	else
	{
		ASSERT(plock->holder_repeat_nr == 1);
		plock->holder = NULL;
		plock->holder_repeat_nr = 0;
		sema_up(&plock->semaphore);
	}
}
#ifndef _THREAD_SYNC_H_
#define _THREAD_SYNC_H_
#include "list.h"
#include "stdint.h"
#include "thread.h"
struct semaphore
{
	uint8_t value;
	struct list waiters;
};
struct lock
{
	struct task_struct *holder;      //锁的持有者
	struct semaphore semaphore;
	uint32_t holder_repeat_nr;      //锁的持有者申请锁的次数
};
#endif
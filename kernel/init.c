#include "init.h"
#include "print.h"
#include "interrupt.h"
#include "thread.h"
#include "timer.h"
#include "memory.h"
/*初始化所有模块*/
void init_all()
{
	/*初始化IDT*/
	init_idt();
	init_time();
	init_mem();
	thread_init();
}

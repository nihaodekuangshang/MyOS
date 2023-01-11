#include "init.h"
#include "print.h"
#include "interrupt.h"
#include "timer.h"
/*初始化所有模块*/
void init_all()
{
	/*初始化IDT*/
	init_idt();
	init_time();
}
#ifndef __KERNEL_INTERRUPT_H
#define __KERNEL_INTERRUPT_H
#include "stdint.h"
typedef void* intr_handler;
 void init_idt();
/*
定义中断的两种状态
INTR_OFF为0，表示关闭
INTR_ON为1，表示开启
*/
 enum intr_status{
	INTR_OFF,
	INTR_ON
 };

 enum intr_status intr_get_status();
 enum intr_status intr_set_status(enum intr_status status);
 enum intr_status intr_enable();
 enum intr_status intr_disable();
#endif

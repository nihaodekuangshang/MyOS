#include "timer.h"
#include "io.h"
#include "print.h"


#define IRQ0_FREQUENCY 	100
#define INPUT_FREQUENCY        1193180
#define COUNTER0_VALUE		INPUT_FREQUENCY / IRQ0_FREQUENCY
#define COUNTER0_PORT		0X40
#define COUNTER0_NO 		0
#define COUNTER_MODE		2
#define READ_WRITE_LATCH	3
#define PIT_COUNTROL_PORT	0x43

/* 
( 1) counter_port 是计数器的端口号，用来指定初值 counter_value 的目的端口号。
(2) counter_no 用来在控制字中指定所使用的计数器号码，对应于控制字中的 SCI 和 SC2 位。
(3) rwl 用来设置计数器的读／写／锁存方式，对应于控制字中的 RWl 和 RWO 位。
(4) counter_mode 用来设置计数器的工作方式，对应于控制字中的 M2～M0 位。
(5) counter_value 用来设置计数器的计数初值，由于此值是 16 位，所以我们用了 uint16_t 来定义它。
 */
static void  frequency_set(uint8_t counter_port ,uint8_t counter_no,uint8_t rwl,uint8_t counter_mode,uint16_t counter_value)
{
 /*往控制字寄存器端口 Ox43 中写入控制字*/
        outb(PIT_COUNTROL_PORT,(uint8_t) (counter_no << 6 | rwl << 4 | counter_mode << 1));
    outb(counter_port,(uint8_t)counter_value);    //写入低8位
    outb(counter_port,(uint8_t)counter_value >> 8);  //写入高8位
    return;
}
/*初始化PIC8253*/
void init_time()
{
        frequency_set(COUNTER0_PORT,COUNTER0_NO,READ_WRITE_LATCH,COUNTER_MODE,COUNTER0_VALUE);
}
#ifndef __LIB_KERNEL_PRINT_H
#define __LIB_KERNEL_PRINT_H
#include "stdint.h"

void set_cursor(uint32_t coord);            //设置坐标
void put_int(uint32_t num);                 //以16进制形式输出
void put_str(char* string);
void put_char(uint8_t char_asci);
#endif

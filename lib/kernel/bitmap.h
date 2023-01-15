#ifndef __LIB_KERNEL_BITMAP_H
#define __LIB_KERNEL_BITMAP_H
#include "global.h"
#include "stdint.h"
/*
宏 BITMAP_MASK 其值为1 ，用来在位图中逐位判断，
主要就是通过按位与‘＆’来判断相应位是否为 1 .
*/
#define BITMAP_MASK 1

struct bitmap
{
    uint32_t btmp_bytes_len;
/*在遍历位图时，整体上以字节为单位，细节上是以位为单位，
所以此处位图的指针必须是单字节*/

    uint8_t* bits;
};

void init_bitmap(struct bitmap* btmp);
bool test_bitmap_scan(struct bitmap* btmp,uint32_t bit_idx);
int  bitmap_scan(struct bitmap* btmp,uint32_t cnt);
void set_bitmap(struct bitmap* btmp,uint32_t bit_idx,int8_t value); 

#endif

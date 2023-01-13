#include "bitmap.h"            //函数定义
#include "global.h"            
#include "string.h"            
#include "interrupt.h"         
#include "print.h"             
#include "debug.h"


/*初始化位图*/
void bitmap_init(struct bitmap* btmp)
{
    memset(btmp->bits,0,btmp->btmp_bytes_len);
}
/*判断 bit_idx 位是否为 1 ，若为 1 ，则返回 true ，否则返回 false*/
bool bitmap_scan_test(struct bitmap* btmp,uint32_t bit_idx)
{
    uint32_t byte_idx = bit_idx/8; /*取整，作为数组下标,要找那个字节*/
    uint32_t byte_bit = bit_idx%8; /*要判断的是该字节的第几位*/
    return btmp->bits[byte_idx]&(BITMAP_MASK<<byte_bit);
}
/*在位图中申请连续 cnt 个位，成功，返回其起始位下标，失败，返回-1*/
int  bitmap_scan(struct bitmap* btmp,uint32_t cnt)
{
    uint32_t byte_idx = 0; //数组的索引
    /*索引小于长度且该字节为无空闲位，继续查找*/
    while(byte_idx<btmp->btmp_bytes_len&&0xff==btmp->bits[byte_idx])
    {
        byte_idx++;
    }
    /*找不到空闲的位*/
    if (byte_idx>=btmp->btmp_bytes_len)
    {
        return -1;
    }
    /*查找为0的位*/
    uint32_t bit_idx = 0;
    while((BITMAP_MASK<<bit_idx)&btmp->bits[byte_idx])
    {
        bit_idx++;
    }
    uint32_t bit_start = byte_idx*8 + bit_idx; //空闲位在位图的索引
    uint32_t bit_start_tmp = bit_start;        //循环用
    uint32_t count = 0;                       //保存找到的连续空闲位数
    bit_start = -1;                           //找不到符合条件的直接返回
    while (bit_start_tmp<btmp->btmp_bytes_len*8)
    {
       if(bitmap_scan_test(btmp,bit_start_tmp)==false) 
       	{
            count++;
        }
        else
            count = 0;
        if (count == cnt)
        {
            bit_start = bit_start_tmp - cnt +1;
            break;
        }
        
        bit_start_tmp++;
    }
    return bit_start;

}
/*将位图 btmp 的 bit_idx 位设置为 value*/
void bitmap_set(struct bitmap* btmp,uint32_t bit_idx,int8_t value)
{
    ASSERT((value==1)||(value==0));
    uint32_t byte_idx = bit_idx/8; /*取整，作为数组下标,要找那个字节*/
    uint32_t byte_bit = bit_idx%8; /*要判断的是该字节的第几位*/
    if(value==1)
        btmp->bits[byte_idx] |= (value<<byte_bit);
    else
        btmp->bits[byte_idx] &= (value<<byte_bit);

}
#ifndef _KERNEL_MEMORY_H
#define _KERNEL_MEMORY_H
#include "stdint.h"
#include "bitmap.h"

struct virtual_addr
{
    struct bitmap vaddr_bitmap;        //虚拟地址位图结构
    uint32_t vaddr_start;        //虚拟地址起始地址
};
enum pool_flags
{
        PF_KERNEL = 1, //kernel pool
        PF_USER = 2 //user pool
};
#define  PG_P_1 1    //an attribute bit that page table entry or PDE exists
#define  PG_P_0 0
#define  PG_RW_R 0b00
#define  PG_RW_W 0b10
#define  PG_US_U 0b100
#define  PG_US_S 0b000
extern struct pool kernel_pool,user_pool;

static void* get_vaddr(enum pool_flags pf,uint32_t pg_cnt);
static void* get_pde_ptr(uint32_t vaddr);
static void* get_pte_ptr(uint32_t vaddr);
static void* palloc(struct pool* m_pool);
static void page_table_add(void* _vaddr,void* _paddr);
void* malloc_page(enum pool_flags pf,uint32_t pg_cnt);
void* get_kernel_page(uint32_t pg_cnt);
void init_mem();
#endif

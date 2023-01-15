#include "memory.h"
#include "stdint.h"
#include "print.h"
#include "bitmap.h"
#include "debug.h"
#include "string.h"

#define PG_SIZE 4092 //page size
#define DEBUG true
#define MEM_BITMAP_BASE  0xc009a000//kernel bitmap start address

/*
*  Cross the low end 1MB of memory in the kernel address space 
*  to make virtual addresses logically contiguous
*/
#define K_HEAP_START 0xc0100000

/*
* memory pool struct  
* Generate two instance to manage the user and kernel memory pool
*/
struct pool
{
        struct bitmap pool_bitmap;
        uint32_t phy_addr_start;
        uint32_t pool_size;
};

struct pool user_pool,kernel_pool;     //Generate user and kernel memory pool
struct virtual_addr kernel_vaddr;      //assign a virtual address to kernel

static void init_mem_pool(uint32_t all_mem)
{
//the size page catalog table and page table in bytes                                   
/*
* 0 and 768 page catalog entry points to the same page table
* 769~1022 page catalog entry points to 254 page table
* 1023 page catalog entry points to itself
* the other PDE are not used
*/
        uint32_t page_table_size = 256*PG_SIZE;
        //record the number of memory bytes currently used
        uint32_t used_mem = page_table_size + 0x100000;
        //record the number of memory bytes currently available
        uint32_t  free_mem = all_mem - used_mem;
        //record the number of physical page currently available
        uint16_t all_free_pages = free_mem / PG_SIZE;
        //record the number of physical pages available to the currently kernel
        uint16_t kernel_free_pages = all_free_pages / 2;
        //record the number of physical pages available to the currently user
        uint16_t user_free_pages = all_free_pages - kernel_free_pages;


        /*
        *  in order to simplify bitmap operations, the remainder is not proceessed.
        * The advantage is that the memory out-of-bounds check is not performed,
        * beacause the memory represented by btimap is much smaller than physical memory
        * the disadvantage is that the memory will be lost.
        */
        //a bit in bitmap represents a page
        uint32_t kbm_length = kernel_free_pages / 8; //kernel bitmap length
        uint32_t ubm_length = user_free_pages / 8;   //user bitmap length

        uint32_t kp_start = used_mem;               // kernel pool start address
        uint32_t up_start = kp_start + kernel_free_pages * PG_SIZE; // user pool start address
        
        kernel_pool.phy_addr_start = kp_start;
        user_pool.phy_addr_start = up_start;

        kernel_pool.pool_size = kernel_free_pages * PG_SIZE;
        user_pool.pool_size = user_free_pages * PG_SIZE;

        kernel_pool.pool_bitmap.btmp_bytes_len = kbm_length;
        user_pool.pool_bitmap.btmp_bytes_len = ubm_length;

        kernel_pool.pool_bitmap.bits = (uint8_t*)(MEM_BITMAP_BASE + 0 );
        user_pool.pool_bitmap.bits = (void*)(MEM_BITMAP_BASE + kbm_length);


//print pool info
if(DEBUG)
{
        put_str("kernel_pool_btimap_start:");
        put_int((int)kernel_pool.pool_bitmap.bits);
        put_char('\n');
        put_str("kernel_pool_phy_addr_strat:");
        put_int((int)kernel_pool.phy_addr_start);
        put_char('\n');
                put_str("user_pool_btimap_start:");
                put_int((int)user_pool.pool_bitmap.bits);
                put_char('\n');
                put_str("user_pool_phy_addr_strat:");
                put_int((int)user_pool.phy_addr_start);
                put_char('\n');
}
        //Bitmap set to 0
        init_bitmap(&kernel_pool.pool_bitmap);
        init_bitmap(&user_pool.pool_bitmap);

        //Initializes the bitmap of kernel virtual address and 
        //generates an array based on the actual physical memory size
        kernel_vaddr.vaddr_bitmap.btmp_bytes_len = kbm_length;
        //after kernel_pool and user_poll
        kernel_vaddr.vaddr_bitmap.bits = (void*)(MEM_BITMAP_BASE + kbm_length + ubm_length);
        kernel_vaddr.vaddr_start = K_HEAP_START;
        //init bitmap
        init_bitmap(&kernel_vaddr.vaddr_bitmap);
        

        if(DEBUG)
                put_str("mem_pool init doen");

}
void init_mem()
{
        if(DEBUG)
                put_str("mem start init\n");
        //0xb00 store the adddress that  total_mem_bytes
        uint32_t total_mem_bytes = (*(uint32_t*)(0xb00));
        init_mem_pool(total_mem_bytes);
        if(DEBUG)
                put_str("meme init done\n");
}

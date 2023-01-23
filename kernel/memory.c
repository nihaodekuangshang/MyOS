#include "memory.h"
#include "stdint.h"
#include "print.h"
#include "bitmap.h"
#include "debug.h"
#include "string.h"

#define PG_SIZE 4096 //page size
#define DEBUG true
#define MEM_BITMAP_BASE  0xc009a000//kernel bitmap start address

/*
*  Cross the low end 1MB of memory in the kernel address space 
*  to make virtual addresses logically contiguous
*/
#define K_HEAP_START 0xc0100000

#define PDE_IDX(addr)  (((addr) & 0xffc00000)>>22)
#define PTE_IDX(addr)  ( ((addr) & 0x003FF000) >>12 )
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

/* 
*apply for pg_cnt virtual page int memory pool represented by pf
*success return start address,Failure not return 
*/
static void* get_vaddr(enum pool_flags pf,uint32_t pg_cnt)
{
	int32_t vaddr_start = 0,bit_idx_start = -1;
	if(pf==PF_KERNEL)
	{
		//gets idle as the bit start address
		bit_idx_start = bitmap_scan(&kernel_vaddr.vaddr_bitmap,pg_cnt);
		if(bit_idx_start == -1)
			return NULL;
		//set the bitmap to 1
		for(uint32_t i=0;i<pg_cnt;++i)
		{
			set_bitmap(&kernel_vaddr.vaddr_bitmap,bit_idx_start + i,1);
		}
		vaddr_start = kernel_vaddr.vaddr_start + (bit_idx_start * PG_SIZE);
		return (void*)vaddr_start;
	}
	else	       //user is null in now
	{

	}
}
// get a PDE pointer to the virtual address
static void* get_pde_ptr(uint32_t vaddr)
{
	//the last item is PDE itself,
	uint32_t* pPde = (uint32_t*) (0xfffff000 + (PDE_IDX(vaddr))*4); 
	return pPde;
}
// get a PTE pointer to the virtual address
static void* get_pte_ptr(uint32_t vaddr)
{
	//the last item is PDE itself,
	//uint32_t* pPte = (uint32_t*) (0xffc00000 + ((vaddr & 0xffc00000)>>10 + PTE_IDX(vaddr)*4));
	uint32_t* pPte = (uint32_t*) (0xffc00000 + ((PDE_IDX(vaddr))<<12) + (PTE_IDX(vaddr)*4));
	return pPte;
}
//allocate a physical page in the physical memory pool pointed to by m_pool
static void* palloc(struct pool* m_pool)
{
	//atomization,one at a time
	int bit_idx = bitmap_scan(&m_pool->pool_bitmap,1);
	if(bit_idx == -1)
		return NULL;
	//set bit_idx to 1 in pool_bitmap
	set_bitmap(&m_pool->pool_bitmap,bit_idx,1);
	uint32_t page_phyaddr = ((bit_idx * PG_SIZE) + m_pool->phy_addr_start);
	return (void*)page_phyaddr;
}
/* add a mapping between virtual and physical addresses to the page table*/
static void page_table_add(void* _vaddr,void* _paddr)
{
	uint32_t vaddr = (uint32_t)_vaddr,paddr = (uint32_t)_paddr;
	uint32_t* pde = get_pde_ptr(vaddr);
	uint32_t* pte = get_pte_ptr(vaddr);
	
	//p bit ==1  the PDE aleady exists
	if(*pde & 0x1)
	{
		//PTE is aleady exists,print error
		ASSERT(!(*pte&0x01))
		//PTE done not exists
		if(!(*pte & 0x01))
		{
			*pte = paddr | PG_RW_W | PG_P_1 |PG_US_U;
		}
		else
		{
			PANIC("PTE repaet");
			*pte = paddr | PG_RW_W | PG_P_1 |PG_US_U;
		}
	}
	else	//PDE done not exixts,so we create PDE first
	{
		//a page is allocated from kernel memory pool to strore the PTE
		uint32_t pde_phyaddr = (uint32_t)palloc(&kernel_pool);
		*pde = pde_phyaddr | PG_RW_W | PG_P_1 |PG_US_U;
		//set the physical page to PDE to 0
		// *pde is physical address,cannot be used for address
		// pte retains the upper 20 bits and is converted to pde_phyaddr
		memset((void*)((int)pte&0xfffff000),0,PG_SIZE);
		ASSERT(!(*pte&0x01));
		*pte = pde_phyaddr | PG_RW_W | PG_P_1 |PG_US_U;
	}
}
/*
* apply for a virtual address,assign a physical address to the address,
* and create a	mapping between virtual address and physical address in the page table
* success return start address,Failure not return 
*/
void* malloc_page(enum pool_flags pf,uint32_t pg_cnt)
{
	ASSERT(pg_cnt>0&&pg_cnt<3840);
	/*
	* use get_vaddr apply for a virtual address in the virtual memory pool
	* use palloc apply for a physical address in the physical memory pool
	* create a mapping between virtual address and physical address in the page table
	*/
	void* vaddr_start = get_vaddr(pf,pg_cnt);
	if(vaddr_start == NULL)
		return NULL;
	uint32_t vaddr = vaddr_start;
	while(pg_cnt-->0)
	{
		void *paddr_start = palloc(pf & PF_KERNEL?&kernel_pool:&user_pool);
		if(paddr_start == NULL)
			return NULL;
		page_table_add((void*)(vaddr),(void*)(paddr_start));
		vaddr += PG_SIZE;
	}
	return (void*)vaddr_start;
}
/*
* apply pg_cnt pages in kernel memory pool
* success return start address,Failure not return 
*/
void* get_kernel_page(uint32_t pg_cnt)
{
	void* vaddr = malloc_page(PF_KERNEL,pg_cnt);
	if(vaddr == NULL)
		return NULL;
	memset(vaddr,0,pg_cnt * PG_SIZE);
	return vaddr;

}
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

	uint32_t kp_start = used_mem;		    // kernel pool start address
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

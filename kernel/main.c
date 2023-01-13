#include "print.h"
#include "init.h"
#include "debug.h"
#include "string.h"

int main(void) 
{
   init_all();
   void* addr = get_kernel_pages(3);
   put_str("\n get_kernel_page start vaddr is ");
   put_int((uint32_t)addr);
   put_char('\n');
   while(1);


}

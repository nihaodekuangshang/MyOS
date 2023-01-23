#include "print.h"
#include "init.h"
#include "debug.h"
#include "string.h"
#include "memory.h"

int main(void) 
{
	init_all();
	//asm ("sti");
	void * addr = get_kernel_page(3);
	put_str("\nget page in kernel start:");
	put_int((uint32_t)addr);
	put_char('\n');
	while(1);


}

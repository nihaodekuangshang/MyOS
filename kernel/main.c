#include "print.h"
#include "init.h"
#include "debug.h"
#include "string.h"
#include "memory.h"
void k_thread_a(void* arg)
{
	char* para = arg;
	while(1)
	{
		put_str(para);
		put_char('\n');
	}
}
void k_thread_b(void* arg)
{
	char* para = arg;
	while(1)
	{
		put_str(para);
		put_char('\n');
	}
}
int main(void) 
{
	init_all();

	thread_start("k_thread_a",31,k_thread_a,"k_thread_a     ;");
	thread_start("k_thread_b",11,k_thread_a,"k_thread_b     ;");

	while(1)
	{
		put_str("MAIN    ;");
		put_char('\n');
	}

	return 0;
}

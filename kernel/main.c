#include "print.h"
#include "init.h"
#include "debug.h"

int main() 
{
   put_str("In KERNEL\n");
   init_all();
   ASSERT(1 == 2);
   while(1);
   return 0;
}

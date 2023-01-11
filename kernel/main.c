#include "print.h"
#include "init.h"
#include "debug.h"
#include "string.h"

int main(void) 
{
   init_all();
   ASSERT(strcmp("bbb","bbb"));
   ASSERT(strcmp("bbb","bb"));

   while(1);


}

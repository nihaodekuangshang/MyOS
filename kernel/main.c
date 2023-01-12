#include "print.h"
#include "init.h"
#include "debug.h"
#include "string.h"

int main(void) 
{
   init_all();
   char *dst = "1234567890iiiiiii";
   strcpy(dst,"hello,world");
   put_str(dst);
   put_char('\n');
   put_int(strlen(dst));
   put_char('\n');
   char* a="aaaaaaaaa";
   put_int(strcmp(dst,a));
   strcat(dst,a);
   put_str(dst);
   put_char('\n');
   put_str(strchr(dst,'l'));
   put_char('\n');
   put_str(strrchr(dst,'l'));
   put_char('\n');
   put_int(strchrs(dst,'l'));
   while(1);


}

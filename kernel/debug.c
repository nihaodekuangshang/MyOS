#include "print.h"
#include "debug.h"
#include "interrupt.h"
//打印文件名、行号、函数名、条件并使程序悬停
void panic_spin(char* filename,int line,const char* func,const char* condition)
{
        intr_disable();//关闭中断
        
        put_str("filename:"); put_str(filename); put_char('\n');
        put_str("line:0x");   put_int(line);     put_char('\n');
        put_str("func:");     put_str((char*)func);     put_char('\n');
        put_str("condition:");put_str((char*)condition);put_char('\n');
        while(1);
}
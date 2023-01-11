#ifndef __KERNEL_DEBUG_H
#define __KERNEL_DEBUG_H

void panic_spin(char* filename,int line,const char* func,const char* condition);

/*
 _VA_ARGS一是预处理器所支持的专用标识符。
代表所有与省略号相对应的参数。
"..."表示定义的宏其参数可变。
*/
//前三个参数为编译器预定义
#define PANIC(...) panic_spin (__FILE__,__LINE__,__func__,__VA_ARGS__)

#ifdef NDEBUG 
#define ASSERT(CONDITION) ((void)0)
#else
#define ASSERT(CONDITION) \
   if(CONDITION){}        \
   else{ PANIC(#CONDITION); }   //#使编译器把CONDITION转化成字符串

#endif //NODEBUG
#endif


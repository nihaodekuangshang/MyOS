#include "string.h"
#include "debug.h"
#include "global.h"
/*将 dst＿起始的 size 个字节置为 value*/
void memset(void* dst_,uint8_t value,uint32_t size)
{
    ASSERT(dst_ !=NULL);
    uint8_t* dst = (uint8_t*)dst_;
    while (size--)
    {
        *dst++ = value;
    }
    
}
/*将 src＿起始的 size 个字节复制到 dst- */
void memcpy(void* dst_,const void* src_,uint32_t size)
{
    ASSERT(dst_ !=NULL&&src_ != NULL);
    uint8_t* dst = (uint8_t*)dst_;
    uint8_t* src = (uint8_t*)src_;
    while (size--)
    {
        *dst++ = *src++;
    }
    
}
/*连续比较size个从地址a、b开始的字符*/
int memcmp(const void* a_,const void* b_, uint32_t size)
{
    ASSERT(a_!=NULL&&b_!=NULL);
    uint8_t* a = (uint8_t*)a_;
    uint8_t* b = (uint8_t*)b_;
    while (size--)
    {
        if (*a!=*b)
        {
            return *a>*b?1:-1;
        }
        a++;
        b++;
    }
    return 0;
}
/*字符串从 src＿复制到dst_*/
char* strcpy(char* dsc_,const char* src_)
{
    ASSERT(dsc_ !=NULL&&src_ != NULL);
    uint8_t* dsc = (uint8_t*)dsc_;
    uint8_t* src = (uint8_t*)src_;
    while ((*dsc++ = *src++));
    return dsc_;
}
/*求字符串str的长度,不包括'\0'*/
uint32_t strlen(const char* str)
{
    ASSERT(str != NULL);
    const char* src = (uint8_t*)str;
    while (*src++);
    return (uint32_t)(src-str-1);  //src指向'\0'的下一位
}
/*比较a,b是否相同,a>b return 1; == 0; < 1*/
int8_t strcmp(const char* a,const char* b)
{
    ASSERT(a!=NULL&&b!=NULL);
    uint8_t* dst = (uint8_t*)a;
    uint8_t* src = (uint8_t*)b;
    while (*dst!='\0'&&*src!='\0')
    {
        if (*dst!=*src)
        {
            return *dst>*src?1:-1;
        }
        dst++;
        src++;
    }
    return 0;
}
/*左到右查找字符串 str 中首次出现字符 ch 的地址*/
char* strchr(const char* str,const char ch)
{
    ASSERT(*str!=NULL);
    uint8_t* dst = (uint8_t*)str;
    while (*dst!='\0'&&*dst++!=ch);
    if (*dst=='\0')
    {
        return NULL;
    }
    return (char*)(dst-1);
}
/*从后往前查找字符串 str 中首次出现字符 ch 的地址*/
char* strrchr(const char* str,const uint8_t ch)
{
/*查找最后出现的一次即可*/
    ASSERT(*str!=NULL);
    uint8_t* dst = (uint8_t*)str;
    uint8_t* last_ch = NULL;
    while (*dst!='\0')
    {
        if (*dst == ch)
        {
            last_ch = dst;
        }
        dst++;
        
    }
    return last_ch;
}
/*将字符串 src＿拼接到 dst＿后，返回拼接的串地址*/
char* strcat(char* dsc_,const char* src_)
{

    ASSERT(dsc_ !=NULL&&src_ != NULL);
    uint8_t* dsc = (uint8_t*)dsc_;
    uint8_t* src = (uint8_t*)src_;
    while(*dsc++!='\0');
    dsc--;
    while ((*dsc++ = *src++));
    return dsc_;
}
/*字符串 str 中查找字符 ch 出现的次数*/
uint32_t strchrs(const char* str,uint8_t ch)
{

    ASSERT(*str!=NULL);
    uint8_t* dst = (uint8_t*)str;
    uint32_t num = 0;
    while (*dst!='\0')
    {
        if (*dst==ch)
        {
            num++;
        }
        dst++;
        
    }
    return num;
}
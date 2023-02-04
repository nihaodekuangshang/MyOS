#ifndef __LIB_KERNEL_LIST_H
#define __LIB_KERNEL_LIST_H
#include "stdint.h"

//成员地址 - PCB地址 == 偏移量
//若PCB地址为0,成员地址 == 偏移量
#define offset(struct_type,member) (uint32_t)(&((struct_type*)0)->member)
#define elem2entry(struct_type,struct_mem_name,elem_ptr) (struct_type*)((uint32_t)(elem_ptr)-(offset(struct_type,struct_mem_name)))

struct list_elem
{
    struct list_elem* prev; //前面的节点
    struct list_elem* next; //后面的节点
};

struct list
{
    struct list_elem head; // 不变的头部
    struct list_elem tail; // 不变的尾部
};

typedef bool (function) (struct list_elem*,int arg);

void list_init(struct list*);
void list_insert_before(struct list_elem* before,struct list_elem* elem);
void list_push(struct list* plist,struct list_elem* elem);
void list_append(struct list* plist,struct list_elem* elem);
void list_remove(struct list_elem* pelem);
struct list_elem* list_pop(struct list* plist);
bool list_empty(struct list* plist);
uint32_t list_len(struct list* plist);
struct list_elem* list_traversal(struct list* plist,function func,int arg);
bool elem_find(struct list* plist,struct list_elem* obj_elem);

#endif


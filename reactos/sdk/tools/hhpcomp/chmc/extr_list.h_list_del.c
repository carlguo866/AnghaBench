
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* prev; struct list_head* next; } ;


 int __list_del (struct list_head*,struct list_head*) ;

__attribute__((used)) static inline void list_del(struct list_head *entry)
{
 __list_del(entry->prev, entry->next);
 entry->next = (struct list_head *) 0;
 entry->prev = (struct list_head *) 0;
}

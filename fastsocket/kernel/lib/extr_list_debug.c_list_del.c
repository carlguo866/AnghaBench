
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct list_head {TYPE_1__* prev; TYPE_2__* next; } ;
struct TYPE_6__ {struct list_head* prev; } ;
struct TYPE_5__ {struct list_head* next; } ;


 TYPE_2__* LIST_POISON1 ;
 TYPE_1__* LIST_POISON2 ;
 int WARN (int,char*,struct list_head*,struct list_head*) ;
 int __list_del (TYPE_1__*,TYPE_2__*) ;

void list_del(struct list_head *entry)
{
 WARN(entry->prev->next != entry,
  "list_del corruption. prev->next should be %p, "
  "but was %p\n", entry, entry->prev->next);
 WARN(entry->next->prev != entry,
  "list_del corruption. next->prev should be %p, "
  "but was %p\n", entry, entry->next->prev);
 __list_del(entry->prev, entry->next);
 entry->next = LIST_POISON1;
 entry->prev = LIST_POISON2;
}

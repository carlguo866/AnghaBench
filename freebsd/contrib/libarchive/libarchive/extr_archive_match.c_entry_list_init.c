
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry_list {scalar_t__ count; int * first; int ** last; } ;



__attribute__((used)) static void
entry_list_init(struct entry_list *list)
{
 list->first = ((void*)0);
 list->last = &(list->first);
 list->count = 0;
}

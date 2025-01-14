
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mthca_array {TYPE_1__* page_list; } ;
struct TYPE_2__ {void** page; } ;


 int MTHCA_ARRAY_MASK ;
 int PAGE_SHIFT ;

void *mthca_array_get(struct mthca_array *array, int index)
{
 int p = (index * sizeof (void *)) >> PAGE_SHIFT;

 if (array->page_list[p].page)
  return array->page_list[p].page[index & MTHCA_ARRAY_MASK];
 else
  return ((void*)0);
}

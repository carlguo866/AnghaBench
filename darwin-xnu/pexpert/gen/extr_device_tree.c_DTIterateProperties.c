
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int currentIndex; TYPE_2__* currentProperty; TYPE_1__* entry; } ;
struct TYPE_8__ {char* name; } ;
struct TYPE_7__ {int nProperties; } ;
typedef TYPE_2__ DeviceTreeNodeProperty ;
typedef TYPE_3__* DTPropertyIterator ;


 int kIterationDone ;
 int kSuccess ;
 TYPE_2__* next_prop (TYPE_2__*) ;

int
DTIterateProperties(DTPropertyIterator iter, char **foundProperty)
{
 if (iter->currentIndex >= iter->entry->nProperties) {
  *foundProperty = ((void*)0);
  return kIterationDone;
 } else {
  iter->currentIndex++;
  if (iter->currentIndex == 1) {
   iter->currentProperty = (DeviceTreeNodeProperty *) (iter->entry + 1);
  } else {
   iter->currentProperty = next_prop(iter->currentProperty);
  }
  *foundProperty = iter->currentProperty->name;
  return kSuccess;
 }
}

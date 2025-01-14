
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_pindex_t ;
typedef int vm_page_t ;
typedef TYPE_1__* vm_object_t ;
struct TYPE_5__ {int rtree; } ;


 int VM_OBJECT_ASSERT_WLOCKED (TYPE_1__*) ;
 int vm_page_insert_after (int ,TYPE_1__*,int ,int ) ;
 int vm_radix_lookup_le (int *,int ) ;

int
vm_page_insert(vm_page_t m, vm_object_t object, vm_pindex_t pindex)
{
 vm_page_t mpred;

 VM_OBJECT_ASSERT_WLOCKED(object);
 mpred = vm_radix_lookup_le(&object->rtree, pindex);
 return (vm_page_insert_after(m, object, pindex, mpred));
}

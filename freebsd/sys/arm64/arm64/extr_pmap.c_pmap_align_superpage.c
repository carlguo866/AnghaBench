
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_size_t ;
typedef int vm_ooffset_t ;
typedef int vm_offset_t ;
typedef TYPE_1__* vm_object_t ;
struct TYPE_3__ {int flags; int pg_color; } ;


 int L2_OFFSET ;
 int L2_SIZE ;
 int OBJ_COLORED ;
 scalar_t__ ptoa (int ) ;

void
pmap_align_superpage(vm_object_t object, vm_ooffset_t offset,
    vm_offset_t *addr, vm_size_t size)
{
 vm_offset_t superpage_offset;

 if (size < L2_SIZE)
  return;
 if (object != ((void*)0) && (object->flags & OBJ_COLORED) != 0)
  offset += ptoa(object->pg_color);
 superpage_offset = offset & L2_OFFSET;
 if (size - ((L2_SIZE - superpage_offset) & L2_OFFSET) < L2_SIZE ||
     (*addr & L2_OFFSET) == superpage_offset)
  return;
 if ((*addr & L2_OFFSET) < superpage_offset)
  *addr = (*addr & ~L2_OFFSET) + superpage_offset;
 else
  *addr = ((*addr + L2_OFFSET) & ~L2_OFFSET) + superpage_offset;
}

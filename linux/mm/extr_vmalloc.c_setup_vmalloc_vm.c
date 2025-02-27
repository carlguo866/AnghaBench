
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmap_area {struct vm_struct* vm; scalar_t__ va_start; scalar_t__ va_end; } ;
struct vm_struct {unsigned long flags; void const* caller; scalar_t__ size; void* addr; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vmap_area_lock ;

__attribute__((used)) static void setup_vmalloc_vm(struct vm_struct *vm, struct vmap_area *va,
         unsigned long flags, const void *caller)
{
 spin_lock(&vmap_area_lock);
 vm->flags = flags;
 vm->addr = (void *)va->va_start;
 vm->size = va->va_end - va->va_start;
 vm->caller = caller;
 va->vm = vm;
 spin_unlock(&vmap_area_lock);
}

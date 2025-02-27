
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_flags; } ;
struct fault {int flags; } ;


 int PPR_FAULT_EXEC ;
 int PPR_FAULT_READ ;
 int PPR_FAULT_WRITE ;
 unsigned long VM_EXEC ;
 unsigned long VM_READ ;
 unsigned long VM_WRITE ;

__attribute__((used)) static bool access_error(struct vm_area_struct *vma, struct fault *fault)
{
 unsigned long requested = 0;

 if (fault->flags & PPR_FAULT_EXEC)
  requested |= VM_EXEC;

 if (fault->flags & PPR_FAULT_READ)
  requested |= VM_READ;

 if (fault->flags & PPR_FAULT_WRITE)
  requested |= VM_WRITE;

 return (requested & ~vma->vm_flags) != 0;
}

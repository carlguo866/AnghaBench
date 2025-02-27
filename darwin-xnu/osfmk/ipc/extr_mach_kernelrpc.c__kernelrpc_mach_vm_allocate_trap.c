
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
struct _kernelrpc_mach_vm_allocate_trap_args {int addr; int flags; int size; int target; } ;
typedef int mach_vm_offset_t ;
typedef int addr ;
struct TYPE_5__ {int map; } ;


 int KERN_SUCCESS ;
 int MACH_SEND_INVALID_DEST ;
 scalar_t__ copyin (int ,char*,int) ;
 int copyout (int *,int ,int) ;
 TYPE_1__* current_task () ;
 int mach_vm_allocate_external (int ,int *,int ,int ) ;
 TYPE_1__* port_name_to_task (int ) ;
 int task_deallocate (TYPE_1__*) ;

int
_kernelrpc_mach_vm_allocate_trap(struct _kernelrpc_mach_vm_allocate_trap_args *args)
{
 mach_vm_offset_t addr;
 task_t task = port_name_to_task(args->target);
 int rv = MACH_SEND_INVALID_DEST;

 if (task != current_task())
  goto done;

 if (copyin(args->addr, (char *)&addr, sizeof (addr)))
  goto done;

 rv = mach_vm_allocate_external(task->map, &addr, args->size, args->flags);
 if (rv == KERN_SUCCESS)
  rv = copyout(&addr, args->addr, sizeof (addr));

done:
 if (task)
  task_deallocate(task);
 return (rv);
}

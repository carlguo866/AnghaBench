
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_name_t ;
typedef scalar_t__ kern_return_t ;
typedef int ipc_space_t ;


 scalar_t__ MACH_SEND_INVALID_DEST ;
 scalar_t__ _kernelrpc_mach_port_destroy (int ,int ) ;
 scalar_t__ _kernelrpc_mach_port_destroy_trap (int ,int ) ;

kern_return_t
mach_port_destroy(
 ipc_space_t task,
 mach_port_name_t name)
{
 kern_return_t rv;

 rv = _kernelrpc_mach_port_destroy_trap(task, name);

 if (rv == MACH_SEND_INVALID_DEST)
  rv = _kernelrpc_mach_port_destroy(task, name);

 return (rv);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ uptr ;


 int current_thread () ;
 scalar_t__ dtrace_get_kernel_stack (int ) ;
 scalar_t__ kernel_stack_size ;

__attribute__((used)) static bool
ptr_is_on_stack(uptr ptr)
{
 vm_offset_t base = dtrace_get_kernel_stack(current_thread());

 if (ptr >= base && ptr < (base + kernel_stack_size)) {
  return 1;
 } else {
  return 0;
 }
}

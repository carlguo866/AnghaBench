
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_cpu_context {int dummy; } ;


 int __sysreg_save_common_state (struct kvm_cpu_context*) ;
 int __sysreg_save_el2_return_state (struct kvm_cpu_context*) ;

void sysreg_save_guest_state_vhe(struct kvm_cpu_context *ctxt)
{
 __sysreg_save_common_state(ctxt);
 __sysreg_save_el2_return_state(ctxt);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ vm86_active; } ;
struct vcpu_vmx {int emulation_required; TYPE_1__ rmode; } ;
struct TYPE_4__ {int efer; unsigned long cr0; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 int CR0_READ_SHADOW ;
 int EFER_LME ;
 int GUEST_CR0 ;
 unsigned long KVM_VM_CR0_ALWAYS_OFF ;
 unsigned long KVM_VM_CR0_ALWAYS_ON ;
 unsigned long KVM_VM_CR0_ALWAYS_ON_UNRESTRICTED_GUEST ;
 unsigned long X86_CR0_PE ;
 unsigned long X86_CR0_PG ;
 int emulation_required (struct kvm_vcpu*) ;
 scalar_t__ enable_ept ;
 scalar_t__ enable_unrestricted_guest ;
 int enter_lmode (struct kvm_vcpu*) ;
 int enter_pmode (struct kvm_vcpu*) ;
 int enter_rmode (struct kvm_vcpu*) ;
 int ept_update_paging_mode_cr0 (unsigned long*,unsigned long,struct kvm_vcpu*) ;
 int exit_lmode (struct kvm_vcpu*) ;
 scalar_t__ is_paging (struct kvm_vcpu*) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmcs_writel (int ,unsigned long) ;

void vmx_set_cr0(struct kvm_vcpu *vcpu, unsigned long cr0)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 unsigned long hw_cr0;

 hw_cr0 = (cr0 & ~KVM_VM_CR0_ALWAYS_OFF);
 if (enable_unrestricted_guest)
  hw_cr0 |= KVM_VM_CR0_ALWAYS_ON_UNRESTRICTED_GUEST;
 else {
  hw_cr0 |= KVM_VM_CR0_ALWAYS_ON;

  if (vmx->rmode.vm86_active && (cr0 & X86_CR0_PE))
   enter_pmode(vcpu);

  if (!vmx->rmode.vm86_active && !(cr0 & X86_CR0_PE))
   enter_rmode(vcpu);
 }
 if (enable_ept && !enable_unrestricted_guest)
  ept_update_paging_mode_cr0(&hw_cr0, cr0, vcpu);

 vmcs_writel(CR0_READ_SHADOW, cr0);
 vmcs_writel(GUEST_CR0, hw_cr0);
 vcpu->arch.cr0 = cr0;


 vmx->emulation_required = emulation_required(vcpu);
}

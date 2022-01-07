
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pir; } ;
struct vcpu_vmx {TYPE_2__ pi_desc; } ;
struct TYPE_4__ {int apicv_active; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int KVM_REQ_EVENT ;
 int WARN_ON (int) ;
 scalar_t__ is_guest_mode (struct kvm_vcpu*) ;
 int kvm_apic_update_irr (struct kvm_vcpu*,int ,int*) ;
 int kvm_lapic_find_highest_irr (struct kvm_vcpu*) ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 int kvm_vcpu_exiting_guest_mode (struct kvm_vcpu*) ;
 scalar_t__ nested_exit_on_intr (struct kvm_vcpu*) ;
 int pi_clear_on (TYPE_2__*) ;
 scalar_t__ pi_test_on (TYPE_2__*) ;
 int smp_mb__after_atomic () ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmx_hwapic_irr_update (struct kvm_vcpu*,int) ;

__attribute__((used)) static int vmx_sync_pir_to_irr(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 int max_irr;
 bool max_irr_updated;

 WARN_ON(!vcpu->arch.apicv_active);
 if (pi_test_on(&vmx->pi_desc)) {
  pi_clear_on(&vmx->pi_desc);




  smp_mb__after_atomic();
  max_irr_updated =
   kvm_apic_update_irr(vcpu, vmx->pi_desc.pir, &max_irr);
  if (is_guest_mode(vcpu) && max_irr_updated) {
   if (nested_exit_on_intr(vcpu))
    kvm_vcpu_exiting_guest_mode(vcpu);
   else
    kvm_make_request(KVM_REQ_EVENT, vcpu);
  }
 } else {
  max_irr = kvm_lapic_find_highest_irr(vcpu);
 }
 vmx_hwapic_irr_update(vcpu, max_irr);
 return max_irr;
}

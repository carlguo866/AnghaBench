
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmcs12 {int vm_function_control; } ;
struct vcpu_vmx {int exit_reason; } ;
struct kvm_vcpu {int dummy; } ;


 int EXIT_QUALIFICATION ;
 int UD_VECTOR ;
 int VM_EXIT_INTR_INFO ;
 struct vmcs12* get_vmcs12 (struct kvm_vcpu*) ;
 int is_guest_mode (struct kvm_vcpu*) ;
 int kvm_queue_exception (struct kvm_vcpu*,int ) ;
 int kvm_rax_read (struct kvm_vcpu*) ;
 int kvm_skip_emulated_instruction (struct kvm_vcpu*) ;
 int nested_vmx_eptp_switching (struct kvm_vcpu*,struct vmcs12*) ;
 int nested_vmx_vmexit (struct kvm_vcpu*,int ,int ,int ) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmcs_read32 (int ) ;
 int vmcs_readl (int ) ;

__attribute__((used)) static int handle_vmfunc(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 struct vmcs12 *vmcs12;
 u32 function = kvm_rax_read(vcpu);






 if (!is_guest_mode(vcpu)) {
  kvm_queue_exception(vcpu, UD_VECTOR);
  return 1;
 }

 vmcs12 = get_vmcs12(vcpu);
 if ((vmcs12->vm_function_control & (1 << function)) == 0)
  goto fail;

 switch (function) {
 case 0:
  if (nested_vmx_eptp_switching(vcpu, vmcs12))
   goto fail;
  break;
 default:
  goto fail;
 }
 return kvm_skip_emulated_instruction(vcpu);

fail:
 nested_vmx_vmexit(vcpu, vmx->exit_reason,
     vmcs_read32(VM_EXIT_INTR_INFO),
     vmcs_readl(EXIT_QUALIFICATION));
 return 1;
}

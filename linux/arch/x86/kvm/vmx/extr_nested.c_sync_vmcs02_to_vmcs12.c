
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmcs12 {int vm_exit_controls; int vm_entry_controls; int guest_ia32_efer; int guest_dr7; int guest_intr_status; void* guest_linear_address; void* guest_pdptr3; void* guest_pdptr2; void* guest_pdptr1; void* guest_pdptr0; void* guest_cr3; int vmx_preemption_timer_value; int guest_activity_state; void* guest_interruptibility_info; void* guest_sysenter_eip; void* guest_sysenter_esp; void* guest_sysenter_cs; void* guest_ss_ar_bytes; void* guest_cs_ar_bytes; void* guest_rflags; int guest_rip; int guest_rsp; int guest_cr4; int guest_cr0; } ;
struct TYPE_3__ {int need_sync_vmcs02_to_vmcs12_rare; scalar_t__ hv_evmcs; } ;
struct vcpu_vmx {TYPE_1__ nested; } ;
struct TYPE_4__ {scalar_t__ mp_state; int efer; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 int GUEST_ACTIVITY_ACTIVE ;
 int GUEST_ACTIVITY_HLT ;
 int GUEST_CR3 ;
 int GUEST_CS_AR_BYTES ;
 int GUEST_INTERRUPTIBILITY_INFO ;
 int GUEST_INTR_STATUS ;
 int GUEST_LINEAR_ADDRESS ;
 int GUEST_PDPTR0 ;
 int GUEST_PDPTR1 ;
 int GUEST_PDPTR2 ;
 int GUEST_PDPTR3 ;
 int GUEST_RFLAGS ;
 int GUEST_SS_AR_BYTES ;
 int GUEST_SYSENTER_CS ;
 int GUEST_SYSENTER_EIP ;
 int GUEST_SYSENTER_ESP ;
 scalar_t__ KVM_MP_STATE_HALTED ;
 int VM_ENTRY_IA32E_MODE ;
 int VM_EXIT_SAVE_DEBUG_CONTROLS ;
 int VM_EXIT_SAVE_IA32_EFER ;
 int VM_EXIT_SAVE_VMX_PREEMPTION_TIMER ;
 scalar_t__ enable_ept ;
 scalar_t__ is_pae_paging (struct kvm_vcpu*) ;
 int kvm_get_dr (struct kvm_vcpu*,int,unsigned long*) ;
 int kvm_rip_read (struct kvm_vcpu*) ;
 int kvm_rsp_read (struct kvm_vcpu*) ;
 scalar_t__ nested_cpu_has_ept (struct vmcs12*) ;
 scalar_t__ nested_cpu_has_preemption_timer (struct vmcs12*) ;
 scalar_t__ nested_cpu_has_vid (struct vmcs12*) ;
 int sync_vmcs02_to_vmcs12_rare (struct kvm_vcpu*,struct vmcs12*) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vm_entry_controls_get (struct vcpu_vmx*) ;
 int vmcs12_guest_cr0 (struct kvm_vcpu*,struct vmcs12*) ;
 int vmcs12_guest_cr4 (struct kvm_vcpu*,struct vmcs12*) ;
 int vmcs_read16 (int ) ;
 void* vmcs_read32 (int ) ;
 void* vmcs_read64 (int ) ;
 void* vmcs_readl (int ) ;
 int vmx_get_preemption_timer_value (struct kvm_vcpu*) ;

__attribute__((used)) static void sync_vmcs02_to_vmcs12(struct kvm_vcpu *vcpu, struct vmcs12 *vmcs12)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);

 if (vmx->nested.hv_evmcs)
  sync_vmcs02_to_vmcs12_rare(vcpu, vmcs12);

 vmx->nested.need_sync_vmcs02_to_vmcs12_rare = !vmx->nested.hv_evmcs;

 vmcs12->guest_cr0 = vmcs12_guest_cr0(vcpu, vmcs12);
 vmcs12->guest_cr4 = vmcs12_guest_cr4(vcpu, vmcs12);

 vmcs12->guest_rsp = kvm_rsp_read(vcpu);
 vmcs12->guest_rip = kvm_rip_read(vcpu);
 vmcs12->guest_rflags = vmcs_readl(GUEST_RFLAGS);

 vmcs12->guest_cs_ar_bytes = vmcs_read32(GUEST_CS_AR_BYTES);
 vmcs12->guest_ss_ar_bytes = vmcs_read32(GUEST_SS_AR_BYTES);

 vmcs12->guest_sysenter_cs = vmcs_read32(GUEST_SYSENTER_CS);
 vmcs12->guest_sysenter_esp = vmcs_readl(GUEST_SYSENTER_ESP);
 vmcs12->guest_sysenter_eip = vmcs_readl(GUEST_SYSENTER_EIP);

 vmcs12->guest_interruptibility_info =
  vmcs_read32(GUEST_INTERRUPTIBILITY_INFO);

 if (vcpu->arch.mp_state == KVM_MP_STATE_HALTED)
  vmcs12->guest_activity_state = GUEST_ACTIVITY_HLT;
 else
  vmcs12->guest_activity_state = GUEST_ACTIVITY_ACTIVE;

 if (nested_cpu_has_preemption_timer(vmcs12) &&
     vmcs12->vm_exit_controls & VM_EXIT_SAVE_VMX_PREEMPTION_TIMER)
   vmcs12->vmx_preemption_timer_value =
    vmx_get_preemption_timer_value(vcpu);
 if (enable_ept) {
  vmcs12->guest_cr3 = vmcs_readl(GUEST_CR3);
  if (nested_cpu_has_ept(vmcs12) && is_pae_paging(vcpu)) {
   vmcs12->guest_pdptr0 = vmcs_read64(GUEST_PDPTR0);
   vmcs12->guest_pdptr1 = vmcs_read64(GUEST_PDPTR1);
   vmcs12->guest_pdptr2 = vmcs_read64(GUEST_PDPTR2);
   vmcs12->guest_pdptr3 = vmcs_read64(GUEST_PDPTR3);
  }
 }

 vmcs12->guest_linear_address = vmcs_readl(GUEST_LINEAR_ADDRESS);

 if (nested_cpu_has_vid(vmcs12))
  vmcs12->guest_intr_status = vmcs_read16(GUEST_INTR_STATUS);

 vmcs12->vm_entry_controls =
  (vmcs12->vm_entry_controls & ~VM_ENTRY_IA32E_MODE) |
  (vm_entry_controls_get(to_vmx(vcpu)) & VM_ENTRY_IA32E_MODE);

 if (vmcs12->vm_exit_controls & VM_EXIT_SAVE_DEBUG_CONTROLS)
  kvm_get_dr(vcpu, 7, (unsigned long *)&vmcs12->guest_dr7);

 if (vmcs12->vm_exit_controls & VM_EXIT_SAVE_IA32_EFER)
  vmcs12->guest_ia32_efer = vcpu->arch.efer;
}

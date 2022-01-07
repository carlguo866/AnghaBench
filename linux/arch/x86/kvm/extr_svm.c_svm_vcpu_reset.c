
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int apic_base; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;
struct vcpu_svm {TYPE_3__ vcpu; scalar_t__ virt_spec_ctrl; scalar_t__ spec_ctrl; } ;
struct TYPE_4__ {int microcode_version; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int APIC_DEFAULT_PHYS_BASE ;
 int MSR_IA32_APICBASE_BSP ;
 int MSR_IA32_APICBASE_ENABLE ;
 int avic_update_vapic_bar (struct vcpu_svm*,int) ;
 int init_vmcb (struct vcpu_svm*) ;
 int kvm_cpuid (struct kvm_vcpu*,int*,int*,int*,int*,int) ;
 int kvm_rdx_write (struct kvm_vcpu*,int) ;
 scalar_t__ kvm_vcpu_apicv_active (struct kvm_vcpu*) ;
 scalar_t__ kvm_vcpu_is_reset_bsp (TYPE_3__*) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void svm_vcpu_reset(struct kvm_vcpu *vcpu, bool init_event)
{
 struct vcpu_svm *svm = to_svm(vcpu);
 u32 dummy;
 u32 eax = 1;

 vcpu->arch.microcode_version = 0x01000065;
 svm->spec_ctrl = 0;
 svm->virt_spec_ctrl = 0;

 if (!init_event) {
  svm->vcpu.arch.apic_base = APIC_DEFAULT_PHYS_BASE |
        MSR_IA32_APICBASE_ENABLE;
  if (kvm_vcpu_is_reset_bsp(&svm->vcpu))
   svm->vcpu.arch.apic_base |= MSR_IA32_APICBASE_BSP;
 }
 init_vmcb(svm);

 kvm_cpuid(vcpu, &eax, &dummy, &dummy, &dummy, 1);
 kvm_rdx_write(vcpu, eax);

 if (kvm_vcpu_apicv_active(vcpu) && !init_event)
  avic_update_vapic_bar(svm, APIC_DEFAULT_PHYS_BASE);
}

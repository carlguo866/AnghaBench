
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int apic_base; } ;
struct kvm_vcpu {TYPE_1__ arch; int kvm; } ;


 scalar_t__ irqchip_in_kernel (int ) ;

u64 kvm_get_apic_base(struct kvm_vcpu *vcpu)
{
 if (irqchip_in_kernel(vcpu->kvm))
  return vcpu->arch.apic_base;
 else
  return vcpu->arch.apic_base;
}

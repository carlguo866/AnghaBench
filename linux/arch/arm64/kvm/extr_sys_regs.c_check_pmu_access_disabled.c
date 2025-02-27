
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int PMUSERENR_EL0 ;
 int __vcpu_sys_reg (struct kvm_vcpu*,int ) ;
 int kvm_inject_undefined (struct kvm_vcpu*) ;
 scalar_t__ vcpu_mode_priv (struct kvm_vcpu*) ;

__attribute__((used)) static bool check_pmu_access_disabled(struct kvm_vcpu *vcpu, u64 flags)
{
 u64 reg = __vcpu_sys_reg(vcpu, PMUSERENR_EL0);
 bool enabled = (reg & flags) || vcpu_mode_priv(vcpu);

 if (!enabled)
  kvm_inject_undefined(vcpu);

 return !enabled;
}

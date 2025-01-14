
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcpu_e500 {scalar_t__* guest_tlb_nv; } ;


 scalar_t__ KVM_E500_TLB0_WAY_NUM ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline unsigned int tlb0_get_next_victim(
  struct kvmppc_vcpu_e500 *vcpu_e500)
{
 unsigned int victim;

 victim = vcpu_e500->guest_tlb_nv[0]++;
 if (unlikely(vcpu_e500->guest_tlb_nv[0] >= KVM_E500_TLB0_WAY_NUM))
  vcpu_e500->guest_tlb_nv[0] = 0;

 return victim;
}

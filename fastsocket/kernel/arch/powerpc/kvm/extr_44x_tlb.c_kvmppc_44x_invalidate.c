
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcpu_44x {struct kvmppc_44x_shadow_ref* shadow_refs; } ;
struct kvmppc_44x_shadow_ref {unsigned int gtlb_index; } ;
struct kvm_vcpu {int dummy; } ;


 int ARRAY_SIZE (struct kvmppc_44x_shadow_ref*) ;
 int kvmppc_44x_shadow_release (struct kvmppc_vcpu_44x*,int) ;
 struct kvmppc_vcpu_44x* to_44x (struct kvm_vcpu*) ;

__attribute__((used)) static void kvmppc_44x_invalidate(struct kvm_vcpu *vcpu,
                                  unsigned int gtlb_index)
{
 struct kvmppc_vcpu_44x *vcpu_44x = to_44x(vcpu);
 int i;

 for (i = 0; i < ARRAY_SIZE(vcpu_44x->shadow_refs); i++) {
  struct kvmppc_44x_shadow_ref *ref = &vcpu_44x->shadow_refs[i];
  if (ref->gtlb_index == gtlb_index)
   kvmppc_44x_shadow_release(vcpu_44x, i);
 }
}

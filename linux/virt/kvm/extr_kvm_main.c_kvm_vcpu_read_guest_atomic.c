
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_memory_slot {int dummy; } ;
typedef int gpa_t ;
typedef int gfn_t ;


 int PAGE_SHIFT ;
 int __kvm_read_guest_atomic (struct kvm_memory_slot*,int,void*,int,unsigned long) ;
 struct kvm_memory_slot* kvm_vcpu_gfn_to_memslot (struct kvm_vcpu*,int) ;
 int offset_in_page (int) ;

int kvm_vcpu_read_guest_atomic(struct kvm_vcpu *vcpu, gpa_t gpa,
          void *data, unsigned long len)
{
 gfn_t gfn = gpa >> PAGE_SHIFT;
 struct kvm_memory_slot *slot = kvm_vcpu_gfn_to_memslot(vcpu, gfn);
 int offset = offset_in_page(gpa);

 return __kvm_read_guest_atomic(slot, gfn, data, offset, len);
}

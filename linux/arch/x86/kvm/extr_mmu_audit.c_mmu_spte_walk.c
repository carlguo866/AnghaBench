
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_mmu_page {int dummy; } ;
typedef int inspect_spte_fn ;
typedef int hpa_t ;
struct TYPE_4__ {int root_level; int * pae_root; int root_hpa; } ;


 int PT64_BASE_ADDR_MASK ;
 int PT64_ROOT_4LEVEL ;
 scalar_t__ VALID_PAGE (int ) ;
 int __mmu_spte_walk (struct kvm_vcpu*,struct kvm_mmu_page*,int ,int) ;
 struct kvm_mmu_page* page_header (int ) ;

__attribute__((used)) static void mmu_spte_walk(struct kvm_vcpu *vcpu, inspect_spte_fn fn)
{
 int i;
 struct kvm_mmu_page *sp;

 if (!VALID_PAGE(vcpu->arch.mmu->root_hpa))
  return;

 if (vcpu->arch.mmu->root_level >= PT64_ROOT_4LEVEL) {
  hpa_t root = vcpu->arch.mmu->root_hpa;

  sp = page_header(root);
  __mmu_spte_walk(vcpu, sp, fn, vcpu->arch.mmu->root_level);
  return;
 }

 for (i = 0; i < 4; ++i) {
  hpa_t root = vcpu->arch.mmu->pae_root[i];

  if (root && VALID_PAGE(root)) {
   root &= PT64_BASE_ADDR_MASK;
   sp = page_header(root);
   __mmu_spte_walk(vcpu, sp, fn, 2);
  }
 }

 return;
}

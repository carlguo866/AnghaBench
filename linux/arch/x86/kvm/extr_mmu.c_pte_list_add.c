
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pte_list_desc {int ** sptes; struct pte_list_desc* more; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_rmap_head {unsigned long val; } ;


 int PTE_LIST_EXT ;
 void* mmu_alloc_pte_list_desc (struct kvm_vcpu*) ;
 int rmap_printk (char*,int *,int ) ;

__attribute__((used)) static int pte_list_add(struct kvm_vcpu *vcpu, u64 *spte,
   struct kvm_rmap_head *rmap_head)
{
 struct pte_list_desc *desc;
 int i, count = 0;

 if (!rmap_head->val) {
  rmap_printk("pte_list_add: %p %llx 0->1\n", spte, *spte);
  rmap_head->val = (unsigned long)spte;
 } else if (!(rmap_head->val & 1)) {
  rmap_printk("pte_list_add: %p %llx 1->many\n", spte, *spte);
  desc = mmu_alloc_pte_list_desc(vcpu);
  desc->sptes[0] = (u64 *)rmap_head->val;
  desc->sptes[1] = spte;
  rmap_head->val = (unsigned long)desc | 1;
  ++count;
 } else {
  rmap_printk("pte_list_add: %p %llx many->many\n", spte, *spte);
  desc = (struct pte_list_desc *)(rmap_head->val & ~1ul);
  while (desc->sptes[PTE_LIST_EXT-1] && desc->more) {
   desc = desc->more;
   count += PTE_LIST_EXT;
  }
  if (desc->sptes[PTE_LIST_EXT-1]) {
   desc->more = mmu_alloc_pte_list_desc(vcpu);
   desc = desc->more;
  }
  for (i = 0; desc->sptes[i]; ++i)
   ++count;
  desc->sptes[i] = spte;
 }
 return count;
}

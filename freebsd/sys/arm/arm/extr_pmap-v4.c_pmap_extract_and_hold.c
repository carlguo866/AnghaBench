
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef int * vm_page_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef size_t u_int ;
struct l2_dtable {TYPE_2__* l2_bucket; } ;
typedef int pt_entry_t ;
typedef TYPE_3__* pmap_t ;
typedef int pd_entry_t ;
struct TYPE_10__ {struct l2_dtable** pm_l2; TYPE_1__* pm_l1; } ;
struct TYPE_9__ {int* l2b_kva; } ;
struct TYPE_8__ {int* l1_kva; } ;


 int KASSERT (int,char*) ;
 size_t L1_IDX (int) ;
 int L1_SUP_FRAME ;
 int L1_SUP_OFFSET ;
 int L1_S_FRAME ;
 int L1_S_OFFSET ;
 int L1_S_PROT_W ;
 int L1_S_SUPERSEC ;
 size_t L2_BUCKET (size_t) ;
 size_t L2_IDX (size_t) ;
 int L2_L_FRAME ;
 int L2_L_OFFSET ;
 int L2_S_FRAME ;
 int L2_S_OFFSET ;
 int L2_S_PROT_W ;
 int L2_TYPE_L ;
 int L2_TYPE_MASK ;
 int * PHYS_TO_VM_PAGE (int) ;
 int PMAP_LOCK (TYPE_3__*) ;
 int PMAP_UNLOCK (TYPE_3__*) ;
 int VM_PROT_WRITE ;
 TYPE_3__* kernel_pmap ;
 scalar_t__ l1pte_section_p (int) ;
 size_t l2pte_index (int) ;
 int vm_page_wire_mapped (int *) ;

vm_page_t
pmap_extract_and_hold(pmap_t pmap, vm_offset_t va, vm_prot_t prot)
{
 struct l2_dtable *l2;
 pd_entry_t l1pd;
 pt_entry_t *ptep, pte;
 vm_paddr_t pa;
 vm_page_t m;
 u_int l1idx;

 l1idx = L1_IDX(va);
 m = ((void*)0);

  PMAP_LOCK(pmap);
 l1pd = pmap->pm_l1->l1_kva[l1idx];
 if (l1pte_section_p(l1pd)) {



  KASSERT(pmap == kernel_pmap, ("huh"));

  if (l1pd & L1_S_SUPERSEC)
   pa = (l1pd & L1_SUP_FRAME) | (va & L1_SUP_OFFSET);
  else
   pa = (l1pd & L1_S_FRAME) | (va & L1_S_OFFSET);
  if (l1pd & L1_S_PROT_W || (prot & VM_PROT_WRITE) == 0) {
   m = PHYS_TO_VM_PAGE(pa);
   if (!vm_page_wire_mapped(m))
    m = ((void*)0);
  }
 } else {





  l2 = pmap->pm_l2[L2_IDX(l1idx)];

  if (l2 == ((void*)0) ||
      (ptep = l2->l2_bucket[L2_BUCKET(l1idx)].l2b_kva) == ((void*)0)) {
    PMAP_UNLOCK(pmap);
   return (((void*)0));
  }

  ptep = &ptep[l2pte_index(va)];
  pte = *ptep;

  if (pte == 0) {
    PMAP_UNLOCK(pmap);
   return (((void*)0));
  }
  if (pte & L2_S_PROT_W || (prot & VM_PROT_WRITE) == 0) {
   if ((pte & L2_TYPE_MASK) == L2_TYPE_L)
    pa = (pte & L2_L_FRAME) | (va & L2_L_OFFSET);
   else
    pa = (pte & L2_S_FRAME) | (va & L2_S_OFFSET);
   m = PHYS_TO_VM_PAGE(pa);
   if (!vm_page_wire_mapped(m))
    m = ((void*)0);
  }
 }
  PMAP_UNLOCK(pmap);
 return (m);
}

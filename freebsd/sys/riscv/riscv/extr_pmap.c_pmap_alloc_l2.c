
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_pindex_t ;
typedef TYPE_1__* vm_page_t ;
typedef int vm_offset_t ;
struct rwlock {int dummy; } ;
typedef int pmap_t ;
typedef int pd_entry_t ;
struct TYPE_5__ {int ref_count; } ;


 int Ln_ENTRIES_SHIFT ;
 scalar_t__ NUL2E ;
 TYPE_1__* PHYS_TO_VM_PAGE (int ) ;
 int PTE_RWX ;
 int PTE_TO_PHYS (int) ;
 TYPE_1__* _pmap_alloc_l3 (int ,scalar_t__,struct rwlock**) ;
 int * pmap_l1 (int ,int ) ;
 int pmap_l2_pindex (int ) ;
 int pmap_load (int *) ;

__attribute__((used)) static vm_page_t
pmap_alloc_l2(pmap_t pmap, vm_offset_t va, struct rwlock **lockp)
{
 pd_entry_t *l1;
 vm_page_t l2pg;
 vm_pindex_t l2pindex;

retry:
 l1 = pmap_l1(pmap, va);
 if (l1 != ((void*)0) && (pmap_load(l1) & PTE_RWX) == 0) {

  l2pg = PHYS_TO_VM_PAGE(PTE_TO_PHYS(pmap_load(l1)));
  l2pg->ref_count++;
 } else {

  l2pindex = pmap_l2_pindex(va) >> Ln_ENTRIES_SHIFT;
  l2pg = _pmap_alloc_l3(pmap, NUL2E + l2pindex, lockp);
  if (l2pg == ((void*)0) && lockp != ((void*)0))
   goto retry;
 }
 return (l2pg);
}

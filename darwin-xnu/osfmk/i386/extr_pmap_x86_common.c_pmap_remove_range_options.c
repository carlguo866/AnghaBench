
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int vm_map_offset_t ;
typedef int uint64_t ;
typedef scalar_t__ queue_entry_t ;
typedef TYPE_3__* pv_hashed_entry_t ;
typedef int pt_entry_t ;
typedef size_t ppnum_t ;
typedef TYPE_4__* pmap_t ;
typedef scalar_t__ pmap_paddr_t ;
typedef int boolean_t ;
struct TYPE_20__ {int wired_mem; int phys_footprint; int alternate_accounting_compressed; int alternate_accounting; int internal_compressed; int internal; int phys_mem; } ;
struct TYPE_17__ {int resident_count; int external; int internal; int reusable; int compressed; int wired_count; } ;
struct TYPE_19__ {TYPE_2__ stats; } ;
struct TYPE_16__ {scalar_t__ next; } ;
struct TYPE_18__ {TYPE_1__ qlink; } ;


 int INTEL_EPT_MOD ;
 int INTEL_EPT_REF ;
 int INTEL_PTE_COMPRESSED_MASK ;
 int IS_INTERNAL_PAGE (size_t) ;
 int IS_MANAGED_PAGE (size_t) ;
 scalar_t__ IS_REUSABLE_PAGE (size_t) ;
 int LOCK_PVH (size_t) ;
 int OSAddAtomic (int,int*) ;
 int OSAddAtomic64 (int,int*) ;
 scalar_t__ PAGE_SIZE_64 ;
 int PHYS_MODIFIED ;
 int PHYS_REFERENCED ;
 int PMAP_OPTIONS_REMOVE ;
 int PMAP_STATS_ASSERTF (int) ;
 int PMAP_UPDATE_TLBS (TYPE_4__*,int ,int ) ;
 int PTE_COMPRESSED_ALT ;
 scalar_t__ PTE_IS_COMPRESSED (int) ;
 int PTE_VALID_MASK (int ) ;
 TYPE_3__* PV_HASHED_ENTRY_NULL ;
 int PV_HASHED_FREE_LIST (TYPE_3__*,TYPE_3__*,int) ;
 int UNLOCK_PVH (size_t) ;
 int assert (int) ;
 int ept_refmod_to_physmap (int) ;
 int is_ept_pmap (TYPE_4__*) ;
 scalar_t__ iswired (int) ;
 TYPE_4__* kernel_pmap ;
 int machine_ptob (int) ;
 size_t pa_index (scalar_t__) ;
 int panic (char*) ;
 int pmap_ledger_debit (TYPE_4__*,int ,int ) ;
 int* pmap_phys_attributes ;
 TYPE_3__* pmap_pv_remove (TYPE_4__*,int ,size_t*,int*,int *) ;
 int pmap_store_pte (int*,int ) ;
 int pmap_update_pte (int*,int,int ) ;
 scalar_t__ pte_to_pa (int) ;
 TYPE_5__ task_ledgers ;

void
pmap_remove_range_options(
 pmap_t pmap,
 vm_map_offset_t start_vaddr,
 pt_entry_t *spte,
 pt_entry_t *epte,
 int options)
{
 pt_entry_t *cpte;
 pv_hashed_entry_t pvh_et = PV_HASHED_ENTRY_NULL;
 pv_hashed_entry_t pvh_eh = PV_HASHED_ENTRY_NULL;
 pv_hashed_entry_t pvh_e;
 int pvh_cnt = 0;
 int num_removed, num_unwired, num_found, num_invalid;
 int stats_external, stats_internal, stats_reusable;
 uint64_t stats_compressed;
 int ledgers_internal, ledgers_alt_internal;
 uint64_t ledgers_compressed, ledgers_alt_compressed;
 ppnum_t pai;
 pmap_paddr_t pa;
 vm_map_offset_t vaddr;
 boolean_t is_ept = is_ept_pmap(pmap);
 boolean_t was_altacct;

 num_removed = 0;
 num_unwired = 0;
 num_found = 0;
 num_invalid = 0;
 stats_external = 0;
 stats_internal = 0;
 stats_reusable = 0;
 stats_compressed = 0;
 ledgers_internal = 0;
 ledgers_compressed = 0;
 ledgers_alt_internal = 0;
 ledgers_alt_compressed = 0;

 for (cpte = spte, vaddr = start_vaddr;
      cpte < epte;
      cpte++, vaddr += PAGE_SIZE_64) {
  pt_entry_t p = *cpte;

  pa = pte_to_pa(p);
  if (pa == 0) {
   if ((options & PMAP_OPTIONS_REMOVE) &&
       (PTE_IS_COMPRESSED(p))) {
    assert(pmap != kernel_pmap);

    stats_compressed++;
    ledgers_compressed++;
    if (p & PTE_COMPRESSED_ALT) {

     ledgers_alt_compressed++;
    }


    pmap_update_pte(cpte, INTEL_PTE_COMPRESSED_MASK, 0);
   }
   continue;
  }
  num_found++;

  if (iswired(p))
   num_unwired++;

  pai = pa_index(pa);

  if (!IS_MANAGED_PAGE(pai)) {




   pmap_store_pte(cpte, 0);
   continue;
  }

  if ((p & PTE_VALID_MASK(is_ept)) == 0)
   num_invalid++;


  pmap_update_pte(cpte, PTE_VALID_MASK(is_ept), 0);
 }

 if (num_found == 0) {

         goto update_counts;
 }



 PMAP_UPDATE_TLBS(pmap, start_vaddr, vaddr);

 for (cpte = spte, vaddr = start_vaddr;
      cpte < epte;
      cpte++, vaddr += PAGE_SIZE_64) {

  pa = pte_to_pa(*cpte);
  if (pa == 0) {
  check_pte_for_compressed_marker:





   if ((options & PMAP_OPTIONS_REMOVE) &&
       (PTE_IS_COMPRESSED(*cpte))) {
    assert(pmap != kernel_pmap);

    stats_compressed++;
    ledgers_compressed++;
    if (*cpte & PTE_COMPRESSED_ALT) {

     ledgers_alt_compressed++;
    }
    pmap_store_pte(cpte, 0);
   }
   continue;
  }

  pai = pa_index(pa);

  LOCK_PVH(pai);

  pa = pte_to_pa(*cpte);
  if (pa == 0) {
   UNLOCK_PVH(pai);
   goto check_pte_for_compressed_marker;
  }




  pvh_e = pmap_pv_remove(pmap, vaddr, (ppnum_t *) &pai, cpte, &was_altacct);

  num_removed++;

  if (IS_REUSABLE_PAGE(pai)) {
   stats_reusable++;
  } else if (IS_INTERNAL_PAGE(pai)) {
   stats_internal++;
  } else {
   stats_external++;
  }

  if (was_altacct) {

   assert(IS_INTERNAL_PAGE(pai));
   ledgers_internal++;
   ledgers_alt_internal++;
  } else if (IS_REUSABLE_PAGE(pai)) {

   assert(!was_altacct);
   assert(IS_INTERNAL_PAGE(pai));
  } else if (IS_INTERNAL_PAGE(pai)) {

   assert(!was_altacct);
   assert(!IS_REUSABLE_PAGE(pai));
   ledgers_internal++;
  } else {

  }






  if (!is_ept) {
   pmap_phys_attributes[pai] |=
    *cpte & (PHYS_MODIFIED | PHYS_REFERENCED);
  } else {
   pmap_phys_attributes[pai] |=
    ept_refmod_to_physmap((*cpte & (INTEL_EPT_REF | INTEL_EPT_MOD))) & (PHYS_MODIFIED | PHYS_REFERENCED);
  }


  pmap_store_pte(cpte, 0);

  UNLOCK_PVH(pai);

  if (pvh_e != PV_HASHED_ENTRY_NULL) {
   pvh_e->qlink.next = (queue_entry_t) pvh_eh;
   pvh_eh = pvh_e;

   if (pvh_et == PV_HASHED_ENTRY_NULL) {
    pvh_et = pvh_e;
   }
   pvh_cnt++;
  }
 }

 if (pvh_eh != PV_HASHED_ENTRY_NULL) {
  PV_HASHED_FREE_LIST(pvh_eh, pvh_et, pvh_cnt);
 }
update_counts:







 pmap_ledger_debit(pmap, task_ledgers.phys_mem, machine_ptob(num_removed));
 PMAP_STATS_ASSERTF((pmap->stats.resident_count >= num_removed,
       "pmap=%p num_removed=%d stats.resident_count=%d",
       pmap, num_removed, pmap->stats.resident_count));
 OSAddAtomic(-num_removed, &pmap->stats.resident_count);

 if (pmap != kernel_pmap) {
  PMAP_STATS_ASSERTF((pmap->stats.external >= stats_external,
        "pmap=%p stats_external=%d stats.external=%d",
        pmap, stats_external, pmap->stats.external));
  PMAP_STATS_ASSERTF((pmap->stats.internal >= stats_internal,
        "pmap=%p stats_internal=%d stats.internal=%d",
        pmap, stats_internal, pmap->stats.internal));
  PMAP_STATS_ASSERTF((pmap->stats.reusable >= stats_reusable,
        "pmap=%p stats_reusable=%d stats.reusable=%d",
        pmap, stats_reusable, pmap->stats.reusable));
  PMAP_STATS_ASSERTF((pmap->stats.compressed >= stats_compressed,
        "pmap=%p stats_compressed=%lld, stats.compressed=%lld",
        pmap, stats_compressed, pmap->stats.compressed));


  if (stats_external) {
   OSAddAtomic(-stats_external, &pmap->stats.external);
  }
  if (stats_internal) {
   OSAddAtomic(-stats_internal, &pmap->stats.internal);
  }
  if (stats_reusable)
   OSAddAtomic(-stats_reusable, &pmap->stats.reusable);
  if (stats_compressed)
   OSAddAtomic64(-stats_compressed, &pmap->stats.compressed);

  if (ledgers_internal) {
   pmap_ledger_debit(pmap,
       task_ledgers.internal,
       machine_ptob(ledgers_internal));
  }
  if (ledgers_compressed) {
   pmap_ledger_debit(pmap,
       task_ledgers.internal_compressed,
       machine_ptob(ledgers_compressed));
  }
  if (ledgers_alt_internal) {
   pmap_ledger_debit(pmap,
       task_ledgers.alternate_accounting,
       machine_ptob(ledgers_alt_internal));
  }
  if (ledgers_alt_compressed) {
   pmap_ledger_debit(pmap,
       task_ledgers.alternate_accounting_compressed,
       machine_ptob(ledgers_alt_compressed));
  }
  pmap_ledger_debit(pmap,
      task_ledgers.phys_footprint,
      machine_ptob((ledgers_internal -
      ledgers_alt_internal) +
            (ledgers_compressed -
      ledgers_alt_compressed)));
 }





 PMAP_STATS_ASSERTF((pmap->stats.wired_count >= num_unwired,
       "pmap=%p num_unwired=%d stats.wired_count=%d",
       pmap, num_unwired, pmap->stats.wired_count));
 OSAddAtomic(-num_unwired, &pmap->stats.wired_count);
 pmap_ledger_debit(pmap, task_ledgers.wired_mem, machine_ptob(num_unwired));

 return;
}

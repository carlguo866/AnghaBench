
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
struct rwlock {int dummy; } ;
struct pv_chunk {int* pc_map; scalar_t__ pv_va; struct pv_chunk* pc_pventry; } ;
struct md_page {int dummy; } ;
typedef struct pv_chunk* pv_entry_t ;
typedef TYPE_3__* pmap_t ;
struct TYPE_10__ {int pm_pvchunk; } ;
struct TYPE_8__ {int pv_gen; int pv_list; } ;
struct TYPE_9__ {int oflags; TYPE_1__ md; } ;


 int CHANGE_PV_LIST_LOCK_TO_PHYS (struct rwlock**,scalar_t__) ;
 int KASSERT (int,char*) ;
 scalar_t__ L2_OFFSET ;
 scalar_t__ L2_SIZE ;
 scalar_t__ Ln_ENTRIES ;
 int MA_OWNED ;
 scalar_t__ PAGE_SIZE ;
 TYPE_2__* PHYS_TO_VM_PAGE (scalar_t__) ;
 int PMAP_LOCK_ASSERT (TYPE_3__*,int ) ;
 int PV_STAT (int ) ;
 struct pv_chunk* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct pv_chunk*,int ) ;
 int TAILQ_REMOVE (int *,struct pv_chunk*,int ) ;
 int VPO_UNMANAGED ;
 int _NPCM ;
 int atomic_add_long (int *,scalar_t__) ;
 int atomic_subtract_int (int *,scalar_t__) ;
 int ffsl (int) ;
 struct md_page* pa_to_pvh (scalar_t__) ;
 int pc_list ;
 struct pv_chunk* pmap_pvh_remove (struct md_page*,TYPE_3__*,scalar_t__) ;
 int pv_entry_allocs ;
 int pv_entry_count ;
 int pv_entry_spare ;
 int pv_next ;

__attribute__((used)) static void
pmap_pv_demote_l2(pmap_t pmap, vm_offset_t va, vm_paddr_t pa,
    struct rwlock **lockp)
{
 struct md_page *pvh;
 struct pv_chunk *pc;
 pv_entry_t pv;
 vm_offset_t va_last;
 vm_page_t m;
 int bit, field;

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 KASSERT((va & L2_OFFSET) == 0,
     ("pmap_pv_demote_l2: va is not 2mpage aligned"));
 KASSERT((pa & L2_OFFSET) == 0,
     ("pmap_pv_demote_l2: pa is not 2mpage aligned"));
 CHANGE_PV_LIST_LOCK_TO_PHYS(lockp, pa);






 pvh = pa_to_pvh(pa);
 pv = pmap_pvh_remove(pvh, pmap, va);
 KASSERT(pv != ((void*)0), ("pmap_pv_demote_l2: pv not found"));
 m = PHYS_TO_VM_PAGE(pa);
 TAILQ_INSERT_TAIL(&m->md.pv_list, pv, pv_next);
 m->md.pv_gen++;

 PV_STAT(atomic_add_long(&pv_entry_allocs, Ln_ENTRIES - 1));
 va_last = va + L2_SIZE - PAGE_SIZE;
 for (;;) {
  pc = TAILQ_FIRST(&pmap->pm_pvchunk);
  KASSERT(pc->pc_map[0] != 0 || pc->pc_map[1] != 0 ||
      pc->pc_map[2] != 0, ("pmap_pv_demote_l2: missing spare"));
  for (field = 0; field < _NPCM; field++) {
   while (pc->pc_map[field]) {
    bit = ffsl(pc->pc_map[field]) - 1;
    pc->pc_map[field] &= ~(1ul << bit);
    pv = &pc->pc_pventry[field * 64 + bit];
    va += PAGE_SIZE;
    pv->pv_va = va;
    m++;
    KASSERT((m->oflags & VPO_UNMANAGED) == 0,
       ("pmap_pv_demote_l2: page %p is not managed", m));
    TAILQ_INSERT_TAIL(&m->md.pv_list, pv, pv_next);
    m->md.pv_gen++;
    if (va == va_last)
     goto out;
   }
  }
  TAILQ_REMOVE(&pmap->pm_pvchunk, pc, pc_list);
  TAILQ_INSERT_TAIL(&pmap->pm_pvchunk, pc, pc_list);
 }
out:
 if (pc->pc_map[0] == 0 && pc->pc_map[1] == 0 && pc->pc_map[2] == 0) {
  TAILQ_REMOVE(&pmap->pm_pvchunk, pc, pc_list);
  TAILQ_INSERT_TAIL(&pmap->pm_pvchunk, pc, pc_list);
 }
 PV_STAT(atomic_add_long(&pv_entry_count, Ln_ENTRIES - 1));
 PV_STAT(atomic_subtract_int(&pv_entry_spare, Ln_ENTRIES - 1));
}

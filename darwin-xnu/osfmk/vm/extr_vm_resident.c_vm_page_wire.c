
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_10__ ;


typedef int vm_tag_t ;
typedef TYPE_1__* vm_page_t ;
typedef TYPE_2__* vm_object_t ;
typedef TYPE_3__* task_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_25__ {int ledger; } ;
struct TYPE_24__ {scalar_t__ resident_page_count; scalar_t__ wired_page_count; scalar_t__ purgable; scalar_t__ vo_owner; scalar_t__ all_reusable; } ;
struct TYPE_23__ {scalar_t__ vmp_wire_count; scalar_t__ vmp_q_state; scalar_t__ vmp_gobbled; int vmp_fictitious; int vmp_private; scalar_t__ vmp_reusable; scalar_t__ vmp_offset; scalar_t__ vmp_laundry; } ;
struct TYPE_22__ {int phys_footprint; } ;


 scalar_t__ FALSE ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int OSAddAtomic (int,scalar_t__*) ;
 int PAGE_SIZE ;
 scalar_t__ PAGE_SIZE_64 ;
 scalar_t__ TASK_NULL ;
 scalar_t__ TRUE ;
 int VM_CHECK_MEMORYSTATUS ;
 TYPE_3__* VM_OBJECT_OWNER (TYPE_2__*) ;
 int VM_OBJECT_WIRED_PAGE_ADD (TYPE_2__*,TYPE_1__*) ;
 int VM_OBJECT_WIRED_PAGE_UPDATE_END (TYPE_2__*,int ) ;
 int VM_OBJECT_WIRED_PAGE_UPDATE_START (TYPE_2__*) ;
 int VM_PAGE_CHECK (TYPE_1__*) ;
 scalar_t__ VM_PAGE_IS_WIRED ;
 TYPE_2__* VM_PAGE_OBJECT (TYPE_1__*) ;
 int VM_PAGE_WIRED (TYPE_1__*) ;
 scalar_t__ VM_PURGABLE_EMPTY ;
 scalar_t__ VM_PURGABLE_VOLATILE ;
 scalar_t__ __improbable (int) ;
 int assert (int) ;
 int ledger_credit (int ,int,int ) ;
 int ledger_debit (int ,int,int ) ;
 int panic (char*,TYPE_1__*) ;
 TYPE_10__ task_ledgers ;
 int vm_object_ledger_tag_ledgers (TYPE_2__*,int*,int*,int*,int*,scalar_t__*) ;
 int vm_object_lock_assert_exclusive (TYPE_2__*) ;
 int vm_object_reuse_pages (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__) ;
 int vm_page_gobble_count ;
 scalar_t__ vm_page_purgeable_count ;
 scalar_t__ vm_page_purgeable_wired_count ;
 int vm_page_queue_lock ;
 int vm_page_queues_remove (TYPE_1__*,scalar_t__) ;
 int vm_page_wire_count ;
 int vm_pageout_steal_laundry (TYPE_1__*,scalar_t__) ;

void
vm_page_wire(
 vm_page_t mem,
 vm_tag_t tag,
 boolean_t check_memorystatus)
{
 vm_object_t m_object;

 m_object = VM_PAGE_OBJECT(mem);



 VM_PAGE_CHECK(mem);
 if (m_object) {
  vm_object_lock_assert_exclusive(m_object);
 } else {
 }
 LCK_MTX_ASSERT(&vm_page_queue_lock, LCK_MTX_ASSERT_OWNED);
 if ( !VM_PAGE_WIRED(mem)) {

  if (mem->vmp_laundry)
   vm_pageout_steal_laundry(mem, TRUE);

  vm_page_queues_remove(mem, TRUE);

  assert(mem->vmp_wire_count == 0);
  mem->vmp_q_state = VM_PAGE_IS_WIRED;

  if (m_object) {

   VM_OBJECT_WIRED_PAGE_UPDATE_START(m_object);
   VM_OBJECT_WIRED_PAGE_ADD(m_object, mem);
   VM_OBJECT_WIRED_PAGE_UPDATE_END(m_object, tag);

   assert(m_object->resident_page_count >=
          m_object->wired_page_count);
   if (m_object->purgable == VM_PURGABLE_VOLATILE) {
    assert(vm_page_purgeable_count > 0);
    OSAddAtomic(-1, &vm_page_purgeable_count);
    OSAddAtomic(1, &vm_page_purgeable_wired_count);
   }
   if ((m_object->purgable == VM_PURGABLE_VOLATILE ||
        m_object->purgable == VM_PURGABLE_EMPTY) &&
       m_object->vo_owner != TASK_NULL) {
    task_t owner;
    int ledger_idx_volatile;
    int ledger_idx_nonvolatile;
    int ledger_idx_volatile_compressed;
    int ledger_idx_nonvolatile_compressed;
    boolean_t do_footprint;

    owner = VM_OBJECT_OWNER(m_object);
    vm_object_ledger_tag_ledgers(
     m_object,
     &ledger_idx_volatile,
     &ledger_idx_nonvolatile,
     &ledger_idx_volatile_compressed,
     &ledger_idx_nonvolatile_compressed,
     &do_footprint);

    ledger_debit(owner->ledger,
          ledger_idx_volatile,
          PAGE_SIZE);

    ledger_credit(owner->ledger,
           ledger_idx_nonvolatile,
           PAGE_SIZE);
    if (do_footprint) {

     ledger_credit(owner->ledger,
            task_ledgers.phys_footprint,
            PAGE_SIZE);
    }
   }
   if (m_object->all_reusable) {





   } else if (mem->vmp_reusable) {





    vm_object_reuse_pages(m_object,
            mem->vmp_offset,
            mem->vmp_offset+PAGE_SIZE_64,
            FALSE);
   }
  }
  assert(!mem->vmp_reusable);

  if (!mem->vmp_private && !mem->vmp_fictitious && !mem->vmp_gobbled)
   vm_page_wire_count++;
  if (mem->vmp_gobbled)
   vm_page_gobble_count--;
  mem->vmp_gobbled = FALSE;

  if (check_memorystatus == TRUE) {
   VM_CHECK_MEMORYSTATUS;
  }
 }
 assert(!mem->vmp_gobbled);
 assert(mem->vmp_q_state == VM_PAGE_IS_WIRED);
 mem->vmp_wire_count++;
 if (__improbable(mem->vmp_wire_count == 0)) {
  panic("vm_page_wire(%p): wire_count overflow", mem);
 }
 VM_PAGE_CHECK(mem);
}

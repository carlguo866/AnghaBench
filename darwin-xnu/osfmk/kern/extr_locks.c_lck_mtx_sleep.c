
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ wait_result_t ;
typedef scalar_t__ wait_interrupt_t ;
typedef TYPE_1__* thread_t ;
typedef int lck_sleep_action_t ;
typedef int lck_mtx_t ;
typedef int * event_t ;
struct TYPE_4__ {int sched_flags; int rwlock_count; } ;


 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int DBG_MACH_LOCKS ;
 int KERNEL_DEBUG (int,int,int,int,int,int ) ;
 int LCK_MTX_SLEEP_CODE ;
 int LCK_SLEEP_MASK ;
 int LCK_SLEEP_PROMOTED_PRI ;
 int LCK_SLEEP_SPIN ;
 int LCK_SLEEP_SPIN_ALWAYS ;
 int LCK_SLEEP_UNLOCK ;
 int MACHDBG_CODE (int ,int ) ;
 int THREAD_CONTINUE_NULL ;
 scalar_t__ THREAD_WAITING ;
 int TH_SFLAG_RW_PROMOTED ;
 int VM_KERNEL_UNSLIDE_OR_PERM (int *) ;
 scalar_t__ assert_wait (int *,scalar_t__) ;
 TYPE_1__* current_thread () ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_lock_spin_always (int *) ;
 int lck_mtx_unlock (int *) ;
 int lck_rw_clear_promotion (TYPE_1__*,int ) ;
 int panic (char*,int) ;
 scalar_t__ thread_block (int ) ;
 int unslide_for_kdebug (int *) ;

wait_result_t
lck_mtx_sleep(
        lck_mtx_t *lck,
 lck_sleep_action_t lck_sleep_action,
 event_t event,
 wait_interrupt_t interruptible)
{
 wait_result_t res;
 thread_t thread = current_thread();

 KERNEL_DEBUG(MACHDBG_CODE(DBG_MACH_LOCKS, LCK_MTX_SLEEP_CODE) | DBG_FUNC_START,
       VM_KERNEL_UNSLIDE_OR_PERM(lck), (int)lck_sleep_action, VM_KERNEL_UNSLIDE_OR_PERM(event), (int)interruptible, 0);

 if ((lck_sleep_action & ~LCK_SLEEP_MASK) != 0)
  panic("Invalid lock sleep action %x\n", lck_sleep_action);

 if (lck_sleep_action & LCK_SLEEP_PROMOTED_PRI) {






  thread->rwlock_count++;
 }

 res = assert_wait(event, interruptible);
 if (res == THREAD_WAITING) {
  lck_mtx_unlock(lck);
  res = thread_block(THREAD_CONTINUE_NULL);
  if (!(lck_sleep_action & LCK_SLEEP_UNLOCK)) {
   if ((lck_sleep_action & LCK_SLEEP_SPIN))
    lck_mtx_lock_spin(lck);
   else if ((lck_sleep_action & LCK_SLEEP_SPIN_ALWAYS))
    lck_mtx_lock_spin_always(lck);
   else
    lck_mtx_lock(lck);
  }
 }
 else
 if (lck_sleep_action & LCK_SLEEP_UNLOCK)
  lck_mtx_unlock(lck);

 if (lck_sleep_action & LCK_SLEEP_PROMOTED_PRI) {
  if ((thread->rwlock_count-- == 1 ) && (thread->sched_flags & TH_SFLAG_RW_PROMOTED)) {

   lck_rw_clear_promotion(thread, unslide_for_kdebug(event));
  }
 }

 KERNEL_DEBUG(MACHDBG_CODE(DBG_MACH_LOCKS, LCK_MTX_SLEEP_CODE) | DBG_FUNC_END, (int)res, 0, 0, 0, 0);

 return res;
}

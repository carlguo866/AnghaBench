
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ wait_result_t ;
typedef int wait_interrupt_t ;
typedef TYPE_1__* thread_t ;
typedef int lck_sleep_action_t ;
typedef int lck_rw_type_t ;
typedef int lck_rw_t ;
typedef int event_t ;
struct TYPE_4__ {int sched_flags; int rwlock_count; } ;


 int LCK_SLEEP_EXCLUSIVE ;
 int LCK_SLEEP_MASK ;
 int LCK_SLEEP_PROMOTED_PRI ;
 int LCK_SLEEP_SHARED ;
 int LCK_SLEEP_UNLOCK ;
 int THREAD_CONTINUE_NULL ;
 scalar_t__ THREAD_WAITING ;
 int TH_SFLAG_RW_PROMOTED ;
 int assert (int) ;
 scalar_t__ assert_wait (int ,int ) ;
 TYPE_1__* current_thread () ;
 int lck_rw_clear_promotion (TYPE_1__*,int ) ;
 int lck_rw_done (int *) ;
 int lck_rw_lock (int *,int ) ;
 int lck_rw_lock_exclusive (int *) ;
 int lck_rw_lock_shared (int *) ;
 int panic (char*,int) ;
 scalar_t__ thread_block (int ) ;
 int unslide_for_kdebug (int ) ;

wait_result_t
lck_rw_sleep(
        lck_rw_t *lck,
 lck_sleep_action_t lck_sleep_action,
 event_t event,
 wait_interrupt_t interruptible)
{
 wait_result_t res;
 lck_rw_type_t lck_rw_type;
 thread_t thread = current_thread();

 if ((lck_sleep_action & ~LCK_SLEEP_MASK) != 0)
  panic("Invalid lock sleep action %x\n", lck_sleep_action);

 if (lck_sleep_action & LCK_SLEEP_PROMOTED_PRI) {
  thread->rwlock_count++;
 }

 res = assert_wait(event, interruptible);
 if (res == THREAD_WAITING) {
  lck_rw_type = lck_rw_done(lck);
  res = thread_block(THREAD_CONTINUE_NULL);
  if (!(lck_sleep_action & LCK_SLEEP_UNLOCK)) {
   if (!(lck_sleep_action & (LCK_SLEEP_SHARED|LCK_SLEEP_EXCLUSIVE)))
    lck_rw_lock(lck, lck_rw_type);
   else if (lck_sleep_action & LCK_SLEEP_EXCLUSIVE)
    lck_rw_lock_exclusive(lck);
   else
    lck_rw_lock_shared(lck);
  }
 }
 else
 if (lck_sleep_action & LCK_SLEEP_UNLOCK)
  (void)lck_rw_done(lck);

 if (lck_sleep_action & LCK_SLEEP_PROMOTED_PRI) {
  if ((thread->rwlock_count-- == 1 ) && (thread->sched_flags & TH_SFLAG_RW_PROMOTED)) {



   assert(lck_sleep_action & LCK_SLEEP_UNLOCK);

   lck_rw_clear_promotion(thread, unslide_for_kdebug(event));
  }
 }

 return res;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ thread_t ;
struct TYPE_9__ {int lck_rw_data; } ;
typedef TYPE_1__ lck_rw_t ;
typedef int boolean_t ;
struct TYPE_10__ {int rwlock_count; } ;


 int DTRACE_RW_SHARED ;
 int FALSE ;
 int LCK_RW_INTERLOCK ;
 scalar_t__ LCK_RW_SHARED_READER ;
 int LCK_RW_WANT_EXCL ;
 int LCK_RW_WANT_UPGRADE ;
 int LOCKSTAT_RECORD (int ,TYPE_1__*,int ) ;
 int LS_LCK_RW_TRY_LOCK_SHARED_ACQUIRE ;
 scalar_t__ THREAD_NULL ;
 int TRUE ;
 int assertf (int,char*,int ,scalar_t__) ;
 int atomic_exchange_abort () ;
 int atomic_exchange_begin32 (int *,int*,int ) ;
 scalar_t__ atomic_exchange_complete32 (int *,int,int,int ) ;
 int cpu_pause () ;
 TYPE_7__* current_thread () ;
 int lck_rw_interlock_spin (TYPE_1__*) ;
 int memory_order_acquire_smp ;
 int ordered_load_rw (TYPE_1__*) ;
 scalar_t__ ordered_load_rw_owner (TYPE_1__*) ;
 int panic (char*,TYPE_1__*,int) ;

boolean_t lck_rw_try_lock_shared(lck_rw_t *lock)
{
 uint32_t data, prev;

 for ( ; ; ) {
  data = atomic_exchange_begin32(&lock->lck_rw_data, &prev, memory_order_acquire_smp);
  if (data & LCK_RW_INTERLOCK) {





   panic("lck_rw_try_lock_shared(): Interlock locked (%p): %x", lock, data);

  }
  if (data & (LCK_RW_WANT_EXCL | LCK_RW_WANT_UPGRADE)) {
   atomic_exchange_abort();
   return FALSE;
  }
  data += LCK_RW_SHARED_READER;
  if (atomic_exchange_complete32(&lock->lck_rw_data, prev, data, memory_order_acquire_smp))
   break;
  cpu_pause();
 }




 current_thread()->rwlock_count++;



 return TRUE;
}

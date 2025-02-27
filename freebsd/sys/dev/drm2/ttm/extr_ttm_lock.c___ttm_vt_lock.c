
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_lock {scalar_t__ rw; int flags; } ;


 int TTM_VT_LOCK ;
 int TTM_VT_LOCK_PENDING ;

__attribute__((used)) static bool __ttm_vt_lock(struct ttm_lock *lock)
{
 bool locked = 0;

 if (lock->rw == 0) {
  lock->flags &= ~TTM_VT_LOCK_PENDING;
  lock->flags |= TTM_VT_LOCK;
  locked = 1;
 } else {
  lock->flags |= TTM_VT_LOCK_PENDING;
 }
 return locked;
}

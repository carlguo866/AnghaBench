
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_lock_data {int idle_has_lock; int spinlock; int kernel_waiters; } ;


 int DRM_KERNEL_CONTEXT ;
 int drm_lock_take (struct drm_lock_data*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void drm_legacy_idlelock_take(struct drm_lock_data *lock_data)
{
 int ret;

 spin_lock_bh(&lock_data->spinlock);
 lock_data->kernel_waiters++;
 if (!lock_data->idle_has_lock) {

  spin_unlock_bh(&lock_data->spinlock);
  ret = drm_lock_take(lock_data, DRM_KERNEL_CONTEXT);
  spin_lock_bh(&lock_data->spinlock);

  if (ret == 1)
   lock_data->idle_has_lock = 1;
 }
 spin_unlock_bh(&lock_data->spinlock);
}

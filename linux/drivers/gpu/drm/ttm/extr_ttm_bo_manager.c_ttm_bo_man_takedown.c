
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mm {int dummy; } ;
struct ttm_range_manager {int lock; struct drm_mm mm; } ;
struct ttm_mem_type_manager {int * priv; } ;


 int EBUSY ;
 scalar_t__ drm_mm_clean (struct drm_mm*) ;
 int drm_mm_takedown (struct drm_mm*) ;
 int kfree (struct ttm_range_manager*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ttm_bo_man_takedown(struct ttm_mem_type_manager *man)
{
 struct ttm_range_manager *rman = (struct ttm_range_manager *) man->priv;
 struct drm_mm *mm = &rman->mm;

 spin_lock(&rman->lock);
 if (drm_mm_clean(mm)) {
  drm_mm_takedown(mm);
  spin_unlock(&rman->lock);
  kfree(rman);
  man->priv = ((void*)0);
  return 0;
 }
 spin_unlock(&rman->lock);
 return -EBUSY;
}

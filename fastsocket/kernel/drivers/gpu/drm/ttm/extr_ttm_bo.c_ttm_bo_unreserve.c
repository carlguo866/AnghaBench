
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {struct ttm_bo_global* glob; } ;
struct ttm_bo_global {int lru_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ttm_bo_unreserve_locked (struct ttm_buffer_object*) ;

void ttm_bo_unreserve(struct ttm_buffer_object *bo)
{
 struct ttm_bo_global *glob = bo->glob;

 spin_lock(&glob->lru_lock);
 ttm_bo_unreserve_locked(bo);
 spin_unlock(&glob->lru_lock);
}

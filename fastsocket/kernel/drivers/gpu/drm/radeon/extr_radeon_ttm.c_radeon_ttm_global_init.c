
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ttm_mem_global {int dummy; } ;
struct ttm_bo_global {int dummy; } ;
struct drm_global_reference {int size; int * release; int * init; int global_type; int object; } ;
struct TYPE_3__ {struct drm_global_reference ref; int mem_glob; } ;
struct TYPE_4__ {int mem_global_referenced; struct drm_global_reference mem_global_ref; TYPE_1__ bo_global_ref; } ;
struct radeon_device {TYPE_2__ mman; } ;


 int DRM_ERROR (char*) ;
 int DRM_GLOBAL_TTM_BO ;
 int DRM_GLOBAL_TTM_MEM ;
 int drm_global_item_ref (struct drm_global_reference*) ;
 int drm_global_item_unref (struct drm_global_reference*) ;
 int radeon_ttm_mem_global_init ;
 int radeon_ttm_mem_global_release ;
 int ttm_bo_global_init ;
 int ttm_bo_global_release ;

__attribute__((used)) static int radeon_ttm_global_init(struct radeon_device *rdev)
{
 struct drm_global_reference *global_ref;
 int r;

 rdev->mman.mem_global_referenced = 0;
 global_ref = &rdev->mman.mem_global_ref;
 global_ref->global_type = DRM_GLOBAL_TTM_MEM;
 global_ref->size = sizeof(struct ttm_mem_global);
 global_ref->init = &radeon_ttm_mem_global_init;
 global_ref->release = &radeon_ttm_mem_global_release;
 r = drm_global_item_ref(global_ref);
 if (r != 0) {
  DRM_ERROR("Failed setting up TTM memory accounting "
     "subsystem.\n");
  return r;
 }

 rdev->mman.bo_global_ref.mem_glob =
  rdev->mman.mem_global_ref.object;
 global_ref = &rdev->mman.bo_global_ref.ref;
 global_ref->global_type = DRM_GLOBAL_TTM_BO;
 global_ref->size = sizeof(struct ttm_bo_global);
 global_ref->init = &ttm_bo_global_init;
 global_ref->release = &ttm_bo_global_release;
 r = drm_global_item_ref(global_ref);
 if (r != 0) {
  DRM_ERROR("Failed setting up TTM BO subsystem.\n");
  drm_global_item_unref(&rdev->mman.mem_global_ref);
  return r;
 }

 rdev->mman.mem_global_referenced = 1;
 return 0;
}

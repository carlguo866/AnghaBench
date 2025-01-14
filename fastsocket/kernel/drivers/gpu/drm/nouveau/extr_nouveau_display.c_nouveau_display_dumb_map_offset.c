
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_2__ {int addr_space_offset; } ;
struct nouveau_bo {TYPE_1__ bo; } ;
struct drm_gem_object {struct nouveau_bo* driver_private; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int ENOENT ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_device*,struct drm_file*,int ) ;
 int drm_gem_object_unreference_unlocked (struct drm_gem_object*) ;

int
nouveau_display_dumb_map_offset(struct drm_file *file_priv,
    struct drm_device *dev,
    uint32_t handle, uint64_t *poffset)
{
 struct drm_gem_object *gem;

 gem = drm_gem_object_lookup(dev, file_priv, handle);
 if (gem) {
  struct nouveau_bo *bo = gem->driver_private;
  *poffset = bo->bo.addr_space_offset;
  drm_gem_object_unreference_unlocked(gem);
  return 0;
 }

 return -ENOENT;
}

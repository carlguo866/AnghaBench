
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {scalar_t__ dev_private; } ;
typedef int int64_t ;
struct TYPE_2__ {unsigned int vblank_crtc; } ;
typedef TYPE_1__ drm_radeon_private_t ;


 int DRM_ERROR (char*,unsigned int) ;
 int DRM_RADEON_VBLANK_CRTC1 ;
 int DRM_RADEON_VBLANK_CRTC2 ;
 int EINVAL ;

int radeon_vblank_crtc_set(struct drm_device *dev, int64_t value)
{
 drm_radeon_private_t *dev_priv = (drm_radeon_private_t *) dev->dev_private;
 if (value & ~(DRM_RADEON_VBLANK_CRTC1 | DRM_RADEON_VBLANK_CRTC2)) {
  DRM_ERROR("called with invalid crtc 0x%x\n", (unsigned int)value);
  return -EINVAL;
 }
 dev_priv->vblank_crtc = (unsigned int)value;
 return 0;
}

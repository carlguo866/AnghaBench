
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_device {scalar_t__ dev_private; } ;
typedef int drm_i915_private_t ;


 int DRM_DEBUG_DRIVER (char*,int ) ;
 int I915_READ (int) ;
 int PIPE_FRMCOUNT_GM45 (int) ;
 int i915_pipe_enabled (struct drm_device*,int) ;
 int pipe_name (int) ;

__attribute__((used)) static u32 gm45_get_vblank_counter(struct drm_device *dev, int pipe)
{
 drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;
 int reg = PIPE_FRMCOUNT_GM45(pipe);

 if (!i915_pipe_enabled(dev, pipe)) {
  DRM_DEBUG_DRIVER("trying to get vblank count for disabled "
     "pipe %c\n", pipe_name(pipe));
  return 0;
 }

 return I915_READ(reg);
}

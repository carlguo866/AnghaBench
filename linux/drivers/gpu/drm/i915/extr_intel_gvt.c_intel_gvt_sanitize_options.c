
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {scalar_t__ enable_gvt; } ;


 int DRM_INFO (char*) ;
 TYPE_1__ i915_modparams ;
 scalar_t__ intel_vgpu_active (struct drm_i915_private*) ;
 int is_supported_device (struct drm_i915_private*) ;

void intel_gvt_sanitize_options(struct drm_i915_private *dev_priv)
{
 if (!i915_modparams.enable_gvt)
  return;

 if (intel_vgpu_active(dev_priv)) {
  DRM_INFO("GVT-g is disabled for guest\n");
  goto bail;
 }

 if (!is_supported_device(dev_priv)) {
  DRM_INFO("Unsupported device. GVT-g is disabled\n");
  goto bail;
 }

 return;
bail:
 i915_modparams.enable_gvt = 0;
}

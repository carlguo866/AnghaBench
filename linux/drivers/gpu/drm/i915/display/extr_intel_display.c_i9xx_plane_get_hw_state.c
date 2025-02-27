
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_plane {int i9xx_plane; int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef int intel_wakeref_t ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
typedef enum intel_display_power_domain { ____Placeholder_intel_display_power_domain } intel_display_power_domain ;
typedef enum i9xx_plane_id { ____Placeholder_i9xx_plane_id } i9xx_plane_id ;


 int DISPLAY_PLANE_ENABLE ;
 int DISPPLANE_SEL_PIPE_MASK ;
 int DISPPLANE_SEL_PIPE_SHIFT ;
 int DSPCNTR (int) ;
 int I915_READ (int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int POWER_DOMAIN_PIPE (int) ;
 int intel_display_power_get_if_enabled (struct drm_i915_private*,int) ;
 int intel_display_power_put (struct drm_i915_private*,int,int ) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static bool i9xx_plane_get_hw_state(struct intel_plane *plane,
        enum pipe *pipe)
{
 struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 enum intel_display_power_domain power_domain;
 enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
 intel_wakeref_t wakeref;
 bool ret;
 u32 val;






 power_domain = POWER_DOMAIN_PIPE(plane->pipe);
 wakeref = intel_display_power_get_if_enabled(dev_priv, power_domain);
 if (!wakeref)
  return 0;

 val = I915_READ(DSPCNTR(i9xx_plane));

 ret = val & DISPLAY_PLANE_ENABLE;

 if (INTEL_GEN(dev_priv) >= 5)
  *pipe = plane->pipe;
 else
  *pipe = (val & DISPPLANE_SEL_PIPE_MASK) >>
   DISPPLANE_SEL_PIPE_SHIFT;

 intel_display_power_put(dev_priv, power_domain, wakeref);

 return ret;
}

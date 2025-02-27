
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {unsigned int rotation; scalar_t__ color_encoding; scalar_t__ color_range; struct drm_framebuffer* fb; TYPE_1__* plane; } ;
struct drm_intel_sprite_colorkey {int flags; } ;
struct intel_plane_state {TYPE_2__ base; struct drm_intel_sprite_colorkey ckey; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_framebuffer {int modifier; TYPE_3__* format; } ;
struct TYPE_6__ {int format; } ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ DRM_COLOR_YCBCR_BT709 ;
 scalar_t__ DRM_COLOR_YCBCR_FULL_RANGE ;
 unsigned int DRM_MODE_REFLECT_MASK ;
 unsigned int DRM_MODE_ROTATE_MASK ;
 int I915_SET_COLORKEY_DESTINATION ;
 int I915_SET_COLORKEY_SOURCE ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int IS_GEMINILAKE (struct drm_i915_private*) ;
 int PLANE_CTL_ENABLE ;
 int PLANE_CTL_KEY_ENABLE_DESTINATION ;
 int PLANE_CTL_KEY_ENABLE_SOURCE ;
 int PLANE_CTL_PLANE_GAMMA_DISABLE ;
 int PLANE_CTL_YUV_RANGE_CORRECTION_DISABLE ;
 int PLANE_CTL_YUV_TO_RGB_CSC_FORMAT_BT709 ;
 int cnl_plane_ctl_flip (unsigned int) ;
 int skl_plane_ctl_alpha (struct intel_plane_state const*) ;
 int skl_plane_ctl_format (int ) ;
 int skl_plane_ctl_rotate (unsigned int) ;
 int skl_plane_ctl_tiling (int ) ;
 struct drm_i915_private* to_i915 (int ) ;

u32 skl_plane_ctl(const struct intel_crtc_state *crtc_state,
    const struct intel_plane_state *plane_state)
{
 struct drm_i915_private *dev_priv =
  to_i915(plane_state->base.plane->dev);
 const struct drm_framebuffer *fb = plane_state->base.fb;
 unsigned int rotation = plane_state->base.rotation;
 const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
 u32 plane_ctl;

 plane_ctl = PLANE_CTL_ENABLE;

 if (INTEL_GEN(dev_priv) < 10 && !IS_GEMINILAKE(dev_priv)) {
  plane_ctl |= skl_plane_ctl_alpha(plane_state);
  plane_ctl |= PLANE_CTL_PLANE_GAMMA_DISABLE;

  if (plane_state->base.color_encoding == DRM_COLOR_YCBCR_BT709)
   plane_ctl |= PLANE_CTL_YUV_TO_RGB_CSC_FORMAT_BT709;

  if (plane_state->base.color_range == DRM_COLOR_YCBCR_FULL_RANGE)
   plane_ctl |= PLANE_CTL_YUV_RANGE_CORRECTION_DISABLE;
 }

 plane_ctl |= skl_plane_ctl_format(fb->format->format);
 plane_ctl |= skl_plane_ctl_tiling(fb->modifier);
 plane_ctl |= skl_plane_ctl_rotate(rotation & DRM_MODE_ROTATE_MASK);

 if (INTEL_GEN(dev_priv) >= 10)
  plane_ctl |= cnl_plane_ctl_flip(rotation &
      DRM_MODE_REFLECT_MASK);

 if (key->flags & I915_SET_COLORKEY_DESTINATION)
  plane_ctl |= PLANE_CTL_KEY_ENABLE_DESTINATION;
 else if (key->flags & I915_SET_COLORKEY_SOURCE)
  plane_ctl |= PLANE_CTL_KEY_ENABLE_SOURCE;

 return plane_ctl;
}

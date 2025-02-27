
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_framebuffer {scalar_t__ modifier; } ;


 scalar_t__ DRM_FORMAT_MOD_LINEAR ;
 scalar_t__ drm_rotation_90_or_270 (unsigned int) ;
 unsigned int intel_tile_height (struct drm_framebuffer const*,int) ;
 unsigned int intel_tile_width_bytes (struct drm_framebuffer const*,int) ;

__attribute__((used)) static unsigned int skl_plane_stride_mult(const struct drm_framebuffer *fb,
       int color_plane, unsigned int rotation)
{




 if (fb->modifier == DRM_FORMAT_MOD_LINEAR)
  return 64;
 else if (drm_rotation_90_or_270(rotation))
  return intel_tile_height(fb, color_plane);
 else
  return intel_tile_width_bytes(fb, color_plane);
}

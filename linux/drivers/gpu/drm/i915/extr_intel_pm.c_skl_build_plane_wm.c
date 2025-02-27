
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct drm_framebuffer* fb; int plane; } ;
struct intel_plane_state {TYPE_2__ base; } ;
struct intel_plane {int id; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_framebuffer {TYPE_1__* format; } ;
typedef enum plane_id { ____Placeholder_plane_id } plane_id ;
struct TYPE_3__ {int num_planes; scalar_t__ is_yuv; } ;


 int intel_wm_plane_visible (struct intel_crtc_state*,struct intel_plane_state const*) ;
 int skl_build_plane_wm_single (struct intel_crtc_state*,struct intel_plane_state const*,int,int ) ;
 int skl_build_plane_wm_uv (struct intel_crtc_state*,struct intel_plane_state const*,int) ;
 struct intel_plane* to_intel_plane (int ) ;

__attribute__((used)) static int skl_build_plane_wm(struct intel_crtc_state *crtc_state,
         const struct intel_plane_state *plane_state)
{
 struct intel_plane *plane = to_intel_plane(plane_state->base.plane);
 const struct drm_framebuffer *fb = plane_state->base.fb;
 enum plane_id plane_id = plane->id;
 int ret;

 if (!intel_wm_plane_visible(crtc_state, plane_state))
  return 0;

 ret = skl_build_plane_wm_single(crtc_state, plane_state,
     plane_id, 0);
 if (ret)
  return ret;

 if (fb->format->is_yuv && fb->format->num_planes > 1) {
  ret = skl_build_plane_wm_uv(crtc_state, plane_state,
         plane_id);
  if (ret)
   return ret;
 }

 return 0;
}

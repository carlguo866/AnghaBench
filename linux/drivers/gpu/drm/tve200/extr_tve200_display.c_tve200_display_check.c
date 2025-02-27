
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {TYPE_1__* state; } ;
struct drm_simple_display_pipe {TYPE_2__ plane; } ;
struct drm_plane_state {struct drm_framebuffer* fb; } ;
struct drm_framebuffer {int* pitches; TYPE_3__* format; } ;
struct drm_display_mode {int hdisplay; int vdisplay; } ;
struct drm_crtc_state {int mode_changed; struct drm_display_mode mode; } ;
struct TYPE_6__ {int* cpp; } ;
struct TYPE_4__ {struct drm_framebuffer* fb; } ;


 int DRM_DEBUG_KMS (char*,...) ;
 int EINVAL ;
 int drm_fb_cma_get_gem_addr (struct drm_framebuffer*,struct drm_plane_state*,int ) ;

__attribute__((used)) static int tve200_display_check(struct drm_simple_display_pipe *pipe,
          struct drm_plane_state *pstate,
          struct drm_crtc_state *cstate)
{
 const struct drm_display_mode *mode = &cstate->mode;
 struct drm_framebuffer *old_fb = pipe->plane.state->fb;
 struct drm_framebuffer *fb = pstate->fb;




 if (!(mode->hdisplay == 352 && mode->vdisplay == 240) &&
     !(mode->hdisplay == 352 && mode->vdisplay == 288) &&
     !(mode->hdisplay == 640 && mode->vdisplay == 480) &&
     !(mode->hdisplay == 720 && mode->vdisplay == 480) &&
     !(mode->hdisplay == 720 && mode->vdisplay == 576)) {
  DRM_DEBUG_KMS("unsupported display mode (%u x %u)\n",
   mode->hdisplay, mode->vdisplay);
  return -EINVAL;
 }

 if (fb) {
  u32 offset = drm_fb_cma_get_gem_addr(fb, pstate, 0);


  if (offset & 3) {
   DRM_DEBUG_KMS("FB not 32-bit aligned\n");
   return -EINVAL;
  }





  if (fb->pitches[0] != mode->hdisplay * fb->format->cpp[0]) {
   DRM_DEBUG_KMS("can't handle pitches\n");
   return -EINVAL;
  }





  if (old_fb && old_fb->format != fb->format)
   cstate->mode_changed = 1;
 }

 return 0;
}

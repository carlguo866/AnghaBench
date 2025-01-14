
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct dm_crtc_state {scalar_t__ active_planes; int interrupts_enabled; int stream; } ;


 scalar_t__ count_crtc_active_planes (struct drm_crtc_state*) ;
 struct dm_crtc_state* to_dm_crtc_state (struct drm_crtc_state*) ;

__attribute__((used)) static void
dm_update_crtc_interrupt_state(struct drm_crtc *crtc,
          struct drm_crtc_state *new_crtc_state)
{
 struct dm_crtc_state *dm_new_crtc_state =
  to_dm_crtc_state(new_crtc_state);

 dm_new_crtc_state->active_planes = 0;
 dm_new_crtc_state->interrupts_enabled = 0;

 if (!dm_new_crtc_state->stream)
  return;

 dm_new_crtc_state->active_planes =
  count_crtc_active_planes(new_crtc_state);

 dm_new_crtc_state->interrupts_enabled =
  dm_new_crtc_state->active_planes > 0;
}

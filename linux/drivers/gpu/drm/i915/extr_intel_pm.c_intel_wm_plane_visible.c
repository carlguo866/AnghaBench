
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int visible; int * fb; int plane; } ;
struct intel_plane_state {TYPE_2__ base; } ;
struct intel_plane {scalar_t__ id; } ;
struct TYPE_3__ {int active; } ;
struct intel_crtc_state {TYPE_1__ base; } ;


 scalar_t__ PLANE_CURSOR ;
 struct intel_plane* to_intel_plane (int ) ;

__attribute__((used)) static bool intel_wm_plane_visible(const struct intel_crtc_state *crtc_state,
       const struct intel_plane_state *plane_state)
{
 struct intel_plane *plane = to_intel_plane(plane_state->base.plane);


 if (!crtc_state->base.active)
  return 0;
 if (plane->id == PLANE_CURSOR)
  return plane_state->base.fb != ((void*)0);
 else
  return plane_state->base.visible;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int zpos; } ;
struct rcar_du_vsp_plane_state {TYPE_1__ state; } ;
struct drm_plane {scalar_t__ type; int * state; } ;


 scalar_t__ DRM_PLANE_TYPE_PRIMARY ;
 int GFP_KERNEL ;
 int __drm_atomic_helper_plane_reset (struct drm_plane*,TYPE_1__*) ;
 struct rcar_du_vsp_plane_state* kzalloc (int,int ) ;
 int rcar_du_vsp_plane_atomic_destroy_state (struct drm_plane*,int *) ;

__attribute__((used)) static void rcar_du_vsp_plane_reset(struct drm_plane *plane)
{
 struct rcar_du_vsp_plane_state *state;

 if (plane->state) {
  rcar_du_vsp_plane_atomic_destroy_state(plane, plane->state);
  plane->state = ((void*)0);
 }

 state = kzalloc(sizeof(*state), GFP_KERNEL);
 if (state == ((void*)0))
  return;

 __drm_atomic_helper_plane_reset(plane, &state->state);
 state->state.zpos = plane->type == DRM_PLANE_TYPE_PRIMARY ? 0 : 1;
}

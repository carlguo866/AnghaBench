
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_object {int dummy; } ;
struct drm_atomic_plane_state {int zpos; int crtc_h; int crtc_w; int crtc_y; int crtc_x; int src_h; int src_w; int src_y; int src_x; int crtc_id; int fb_id; } ;
typedef int drmModeAtomicReq ;


 scalar_t__ drm_object_set_property (int *,struct drm_object*,char*,int ) ;

__attribute__((used)) static bool drm_atomic_restore_plane_state(drmModeAtomicReq *request,
                                           struct drm_object *plane,
                                           const struct drm_atomic_plane_state *plane_state)
{
    if (!plane)
        return 1;

    bool ret = 1;

    if (0 > drm_object_set_property(request, plane, "FB_ID", plane_state->fb_id))
        ret = 0;
    if (0 > drm_object_set_property(request, plane, "CRTC_ID", plane_state->crtc_id))
        ret = 0;
    if (0 > drm_object_set_property(request, plane, "SRC_X", plane_state->src_x))
        ret = 0;
    if (0 > drm_object_set_property(request, plane, "SRC_Y", plane_state->src_y))
        ret = 0;
    if (0 > drm_object_set_property(request, plane, "SRC_W", plane_state->src_w))
        ret = 0;
    if (0 > drm_object_set_property(request, plane, "SRC_H", plane_state->src_h))
        ret = 0;
    if (0 > drm_object_set_property(request, plane, "CRTC_X", plane_state->crtc_x))
        ret = 0;
    if (0 > drm_object_set_property(request, plane, "CRTC_Y", plane_state->crtc_y))
        ret = 0;
    if (0 > drm_object_set_property(request, plane, "CRTC_W", plane_state->crtc_w))
        ret = 0;
    if (0 > drm_object_set_property(request, plane, "CRTC_H", plane_state->crtc_h))
        ret = 0;

    drm_object_set_property(request, plane, "ZPOS", plane_state->zpos);

    return ret;
}

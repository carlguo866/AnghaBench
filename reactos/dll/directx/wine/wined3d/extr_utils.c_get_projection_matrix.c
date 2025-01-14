
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {float x; float y; float width; float height; } ;
struct wined3d_state {int* render_states; int * transforms; TYPE_4__ viewport; TYPE_3__* fb; } ;
struct wined3d_matrix {float member_0; float member_1; float member_2; float member_3; float member_4; float member_5; float member_6; float member_7; float member_8; float member_9; float member_10; float member_11; float member_12; float member_13; float member_14; float member_15; } ;
struct wined3d_context {scalar_t__ last_was_rhw; TYPE_2__* d3d_info; scalar_t__ render_offscreen; TYPE_1__* gl_info; } ;
typedef enum wined3d_depth_buffer_type { ____Placeholder_wined3d_depth_buffer_type } wined3d_depth_buffer_type ;
struct TYPE_7__ {scalar_t__ depth_stencil; } ;
struct TYPE_6__ {int wined3d_creation_flags; } ;
struct TYPE_5__ {int* supported; } ;
typedef int BOOL ;


 size_t ARB_CLIP_CONTROL ;
 int WINED3D_PIXEL_CENTER_INTEGER ;
 size_t WINED3D_RS_ZENABLE ;
 size_t WINED3D_TS_PROJECTION ;
 int WINED3D_ZB_FALSE ;
 int multiply_matrix (struct wined3d_matrix*,struct wined3d_matrix const*,int *) ;

void get_projection_matrix(const struct wined3d_context *context, const struct wined3d_state *state,
        struct wined3d_matrix *mat)
{
    BOOL clip_control = context->gl_info->supported[ARB_CLIP_CONTROL];
    BOOL flip = !clip_control && context->render_offscreen;
    float center_offset;
    if (!clip_control && context->d3d_info->wined3d_creation_flags & WINED3D_PIXEL_CENTER_INTEGER)
        center_offset = 63.0f / 64.0f;
    else
        center_offset = -1.0f / 64.0f;

    if (context->last_was_rhw)
    {

        float x = state->viewport.x;
        float y = state->viewport.y;
        float w = state->viewport.width;
        float h = state->viewport.height;
        float x_scale = 2.0f / w;
        float x_offset = (center_offset - (2.0f * x) - w) / w;
        float y_scale = flip ? 2.0f / h : 2.0f / -h;
        float y_offset = flip
                ? (center_offset - (2.0f * y) - h) / h
                : (center_offset - (2.0f * y) - h) / -h;
        enum wined3d_depth_buffer_type zenable = state->fb->depth_stencil ?
                state->render_states[WINED3D_RS_ZENABLE] : WINED3D_ZB_FALSE;
        float z_scale = zenable ? clip_control ? 1.0f : 2.0f : 0.0f;
        float z_offset = zenable ? clip_control ? 0.0f : -1.0f : 0.0f;
        const struct wined3d_matrix projection =
        {
             x_scale, 0.0f, 0.0f, 0.0f,
                0.0f, y_scale, 0.0f, 0.0f,
                0.0f, 0.0f, z_scale, 0.0f,
            x_offset, y_offset, z_offset, 1.0f,
        };

        *mat = projection;
    }
    else
    {
        float y_scale = flip ? -1.0f : 1.0f;
        float x_offset = center_offset / state->viewport.width;
        float y_offset = flip
                ? center_offset / state->viewport.height
                : -center_offset / state->viewport.height;
        float z_scale = clip_control ? 1.0f : 2.0f;
        float z_offset = clip_control ? 0.0f : -1.0f;
        const struct wined3d_matrix projection =
        {
                1.0f, 0.0f, 0.0f, 0.0f,
                0.0f, y_scale, 0.0f, 0.0f,
                0.0f, 0.0f, z_scale, 0.0f,
            x_offset, y_offset, z_offset, 1.0f,
        };

        multiply_matrix(mat, &projection, &state->transforms[WINED3D_TS_PROJECTION]);
    }
}

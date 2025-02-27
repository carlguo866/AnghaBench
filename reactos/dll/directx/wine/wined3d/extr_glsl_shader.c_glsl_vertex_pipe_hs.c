
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_state {scalar_t__* shader; } ;
struct wined3d_context {unsigned int shader_update_mask; } ;
typedef int DWORD ;


 unsigned int WINED3D_SHADER_TYPE_DOMAIN ;
 size_t WINED3D_SHADER_TYPE_VERTEX ;

__attribute__((used)) static void glsl_vertex_pipe_hs(struct wined3d_context *context,
        const struct wined3d_state *state, DWORD state_id)
{



    context->shader_update_mask |= 1u << WINED3D_SHADER_TYPE_DOMAIN;

    if (state->shader[WINED3D_SHADER_TYPE_VERTEX])
        context->shader_update_mask |= 1u << WINED3D_SHADER_TYPE_VERTEX;
}

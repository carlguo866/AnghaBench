
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_state {TYPE_3__** shader; } ;
struct wined3d_shader_resource_info {scalar_t__ type; } ;
struct TYPE_4__ {int graphics_samplers; } ;
struct wined3d_gl_info {TYPE_1__ limits; } ;
struct wined3d_context {int* tex_unit_map; struct wined3d_gl_info* gl_info; } ;
struct TYPE_5__ {struct wined3d_shader_resource_info* resource_info; } ;
struct TYPE_6__ {TYPE_2__ reg_maps; } ;
typedef size_t DWORD ;
typedef scalar_t__ BOOL ;


 int MAX_COMBINED_SAMPLERS ;
 size_t MAX_FRAGMENT_SAMPLERS ;
 int MAX_VERTEX_SAMPLERS ;
 int STATE_SAMPLER (size_t) ;
 int WARN (char*,int) ;
 size_t WINED3D_SHADER_TYPE_PIXEL ;
 size_t WINED3D_SHADER_TYPE_VERTEX ;
 int WINED3D_UNMAPPED_STAGE ;
 int context_invalidate_state (struct wined3d_context*,int ) ;
 int context_map_stage (struct wined3d_context*,size_t,int) ;
 scalar_t__ context_unit_free_for_vs (struct wined3d_context*,struct wined3d_shader_resource_info const*,int) ;
 int min (int ,int ) ;

__attribute__((used)) static void context_map_vsamplers(struct wined3d_context *context, BOOL ps, const struct wined3d_state *state)
{
    const struct wined3d_shader_resource_info *vs_resource_info =
            state->shader[WINED3D_SHADER_TYPE_VERTEX]->reg_maps.resource_info;
    const struct wined3d_shader_resource_info *ps_resource_info = ((void*)0);
    const struct wined3d_gl_info *gl_info = context->gl_info;
    int start = min(MAX_COMBINED_SAMPLERS, gl_info->limits.graphics_samplers) - 1;
    int i;




    if (ps)
        ps_resource_info = state->shader[WINED3D_SHADER_TYPE_PIXEL]->reg_maps.resource_info;

    for (i = 0; i < MAX_VERTEX_SAMPLERS; ++i)
    {
        DWORD vsampler_idx = i + MAX_FRAGMENT_SAMPLERS;
        if (vs_resource_info[i].type)
        {
            while (start >= 0)
            {
                if (context_unit_free_for_vs(context, ps_resource_info, start))
                {
                    if (context->tex_unit_map[vsampler_idx] != start)
                    {
                        context_map_stage(context, vsampler_idx, start);
                        context_invalidate_state(context, STATE_SAMPLER(vsampler_idx));
                    }

                    --start;
                    break;
                }

                --start;
            }
            if (context->tex_unit_map[vsampler_idx] == WINED3D_UNMAPPED_STAGE)
                WARN("Couldn't find a free texture unit for vertex sampler %u.\n", i);
        }
    }
}

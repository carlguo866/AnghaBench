
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_rendertarget_info {TYPE_1__* resource; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct fbo_entry {int flags; int key; int id; } ;
struct TYPE_2__ {int format_flags; } ;
typedef int GLenum ;
typedef int DWORD ;


 int WINED3DFMT_FLAG_DEPTH ;
 int WINED3DFMT_FLAG_STENCIL ;
 int WINED3D_FBO_ENTRY_FLAG_DEPTH ;
 int WINED3D_FBO_ENTRY_FLAG_STENCIL ;
 int context_bind_fbo (struct wined3d_context*,int ,int ) ;
 int context_clean_fbo_attachments (struct wined3d_gl_info const*,int ) ;
 int context_generate_fbo_key (struct wined3d_context*,int *,struct wined3d_rendertarget_info const*,struct wined3d_rendertarget_info const*,int ,int ) ;

__attribute__((used)) static void context_reuse_fbo_entry(struct wined3d_context *context, GLenum target,
        const struct wined3d_rendertarget_info *render_targets, const struct wined3d_rendertarget_info *depth_stencil,
        DWORD color_location, DWORD ds_location, struct fbo_entry *entry)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;

    context_bind_fbo(context, target, entry->id);
    context_clean_fbo_attachments(gl_info, target);

    context_generate_fbo_key(context, &entry->key, render_targets, depth_stencil, color_location, ds_location);
    entry->flags = 0;
    if (depth_stencil->resource)
    {
        if (depth_stencil->resource->format_flags & WINED3DFMT_FLAG_DEPTH)
            entry->flags |= WINED3D_FBO_ENTRY_FLAG_DEPTH;
        if (depth_stencil->resource->format_flags & WINED3DFMT_FLAG_STENCIL)
            entry->flags |= WINED3D_FBO_ENTRY_FLAG_STENCIL;
    }
}

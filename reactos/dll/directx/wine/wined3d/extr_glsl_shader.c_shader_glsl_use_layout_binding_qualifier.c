
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {scalar_t__* supported; } ;
typedef int BOOL ;


 size_t ARB_SHADING_LANGUAGE_420PACK ;
 scalar_t__ shader_glsl_use_layout_qualifier (struct wined3d_gl_info const*) ;

__attribute__((used)) static BOOL shader_glsl_use_layout_binding_qualifier(const struct wined3d_gl_info *gl_info)
{
    return gl_info->supported[ARB_SHADING_LANGUAGE_420PACK] && shader_glsl_use_layout_qualifier(gl_info);
}

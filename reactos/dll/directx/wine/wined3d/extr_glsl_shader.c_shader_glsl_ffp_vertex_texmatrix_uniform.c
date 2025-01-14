
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_state {int dummy; } ;
struct wined3d_matrix {int _11; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct TYPE_2__ {int* texture_matrix_location; } ;
struct glsl_shader_prog_link {TYPE_1__ vs; } ;


 int FALSE ;
 int GL_EXTCALL (int ) ;
 unsigned int MAX_TEXTURES ;
 int checkGLcall (char*) ;
 int get_texture_matrix (struct wined3d_context const*,struct wined3d_state const*,unsigned int,struct wined3d_matrix*) ;
 int glUniformMatrix4fv (int,int,int ,int *) ;

__attribute__((used)) static void shader_glsl_ffp_vertex_texmatrix_uniform(const struct wined3d_context *context,
        const struct wined3d_state *state, unsigned int tex, struct glsl_shader_prog_link *prog)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct wined3d_matrix mat;

    if (tex >= MAX_TEXTURES)
        return;
    if (prog->vs.texture_matrix_location[tex] == -1)
        return;

    get_texture_matrix(context, state, tex, &mat);
    GL_EXTCALL(glUniformMatrix4fv(prog->vs.texture_matrix_location[tex], 1, FALSE, &mat._11));
    checkGLcall("glUniformMatrix4fv");
}

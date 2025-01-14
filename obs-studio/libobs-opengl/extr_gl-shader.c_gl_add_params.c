
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gs_shader {void* world; void* viewproj; } ;
struct TYPE_3__ {size_t num; scalar_t__ array; } ;
struct TYPE_4__ {TYPE_1__ params; } ;
struct gl_shader_parser {TYPE_2__ parser; } ;
typedef int GLint ;


 int gl_add_param (struct gs_shader*,scalar_t__,int *) ;
 void* gs_shader_get_param_by_name (struct gs_shader*,char*) ;

__attribute__((used)) static inline bool gl_add_params(struct gs_shader *shader,
     struct gl_shader_parser *glsp)
{
 size_t i;
 GLint tex_id = 0;

 for (i = 0; i < glsp->parser.params.num; i++)
  if (!gl_add_param(shader, glsp->parser.params.array + i,
      &tex_id))
   return 0;

 shader->viewproj = gs_shader_get_param_by_name(shader, "ViewProj");
 shader->world = gs_shader_get_param_by_name(shader, "World");

 return 1;
}

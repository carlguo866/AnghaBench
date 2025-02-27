
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vec4 {int dummy; } ;
struct vec2 {int dummy; } ;
struct program_param {TYPE_2__* param; int obj; } ;
struct matrix4 {int dummy; } ;
struct gs_program {TYPE_3__* device; } ;
struct TYPE_6__ {int ** cur_samplers; } ;
struct TYPE_4__ {void* array; } ;
struct TYPE_5__ {scalar_t__ type; size_t sampler_id; int texture_id; int texture; int * next_sampler; TYPE_1__ cur_value; } ;


 scalar_t__ GS_SHADER_PARAM_BOOL ;
 scalar_t__ GS_SHADER_PARAM_FLOAT ;
 scalar_t__ GS_SHADER_PARAM_INT ;
 scalar_t__ GS_SHADER_PARAM_INT2 ;
 scalar_t__ GS_SHADER_PARAM_INT3 ;
 scalar_t__ GS_SHADER_PARAM_INT4 ;
 scalar_t__ GS_SHADER_PARAM_MATRIX4X4 ;
 scalar_t__ GS_SHADER_PARAM_TEXTURE ;
 scalar_t__ GS_SHADER_PARAM_VEC2 ;
 scalar_t__ GS_SHADER_PARAM_VEC3 ;
 scalar_t__ GS_SHADER_PARAM_VEC4 ;
 int device_load_texture (TYPE_3__*,int ,int ) ;
 int glUniform1fv (int ,int,float*) ;
 int glUniform1i (int ,int ) ;
 int glUniform1iv (int ,int,int*) ;
 int glUniform2fv (int ,int,float*) ;
 int glUniform2iv (int ,int,int*) ;
 int glUniform3fv (int ,int,float*) ;
 int glUniform3iv (int ,int,int*) ;
 int glUniform4fv (int ,int,float*) ;
 int glUniform4iv (int ,int,int*) ;
 int glUniformMatrix4fv (int ,int,int,float*) ;
 int gl_success (char*) ;
 scalar_t__ validate_param (struct program_param*,int) ;

__attribute__((used)) static void program_set_param_data(struct gs_program *program,
       struct program_param *pp)
{
 void *array = pp->param->cur_value.array;

 if (pp->param->type == GS_SHADER_PARAM_BOOL ||
     pp->param->type == GS_SHADER_PARAM_INT) {
  if (validate_param(pp, sizeof(int))) {
   glUniform1iv(pp->obj, 1, (int *)array);
   gl_success("glUniform1iv");
  }

 } else if (pp->param->type == GS_SHADER_PARAM_INT2) {
  if (validate_param(pp, sizeof(int) * 2)) {
   glUniform2iv(pp->obj, 1, (int *)array);
   gl_success("glUniform2iv");
  }

 } else if (pp->param->type == GS_SHADER_PARAM_INT3) {
  if (validate_param(pp, sizeof(int) * 3)) {
   glUniform3iv(pp->obj, 1, (int *)array);
   gl_success("glUniform3iv");
  }

 } else if (pp->param->type == GS_SHADER_PARAM_INT4) {
  if (validate_param(pp, sizeof(int) * 4)) {
   glUniform4iv(pp->obj, 1, (int *)array);
   gl_success("glUniform4iv");
  }

 } else if (pp->param->type == GS_SHADER_PARAM_FLOAT) {
  if (validate_param(pp, sizeof(float))) {
   glUniform1fv(pp->obj, 1, (float *)array);
   gl_success("glUniform1fv");
  }

 } else if (pp->param->type == GS_SHADER_PARAM_VEC2) {
  if (validate_param(pp, sizeof(struct vec2))) {
   glUniform2fv(pp->obj, 1, (float *)array);
   gl_success("glUniform2fv");
  }

 } else if (pp->param->type == GS_SHADER_PARAM_VEC3) {
  if (validate_param(pp, sizeof(float) * 3)) {
   glUniform3fv(pp->obj, 1, (float *)array);
   gl_success("glUniform3fv");
  }

 } else if (pp->param->type == GS_SHADER_PARAM_VEC4) {
  if (validate_param(pp, sizeof(struct vec4))) {
   glUniform4fv(pp->obj, 1, (float *)array);
   gl_success("glUniform4fv");
  }

 } else if (pp->param->type == GS_SHADER_PARAM_MATRIX4X4) {
  if (validate_param(pp, sizeof(struct matrix4))) {
   glUniformMatrix4fv(pp->obj, 1, 0, (float *)array);
   gl_success("glUniformMatrix4fv");
  }

 } else if (pp->param->type == GS_SHADER_PARAM_TEXTURE) {
  if (pp->param->next_sampler) {
   program->device->cur_samplers[pp->param->sampler_id] =
    pp->param->next_sampler;
   pp->param->next_sampler = ((void*)0);
  }

  glUniform1i(pp->obj, pp->param->texture_id);
  device_load_texture(program->device, pp->param->texture,
        pp->param->texture_id);
 }
}

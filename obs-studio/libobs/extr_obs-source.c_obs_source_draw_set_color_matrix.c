
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int dummy; } ;
struct matrix4 {int dummy; } ;
typedef int gs_eparam_t ;
typedef int gs_effect_t ;


 int LOG_WARNING ;
 int blog (int ,char*) ;
 int * gs_effect_get_param_by_name (int *,char*) ;
 int gs_effect_set_matrix4 (int *,struct matrix4 const*) ;
 int gs_effect_set_val (int *,struct vec3 const*,int) ;
 int * gs_get_effect () ;
 int obs_ptr_valid (struct matrix4 const*,char*) ;
 int vec3_set (struct vec3*,float,float,float) ;

void obs_source_draw_set_color_matrix(const struct matrix4 *color_matrix,
          const struct vec3 *color_range_min,
          const struct vec3 *color_range_max)
{
 struct vec3 color_range_min_def;
 struct vec3 color_range_max_def;

 vec3_set(&color_range_min_def, 0.0f, 0.0f, 0.0f);
 vec3_set(&color_range_max_def, 1.0f, 1.0f, 1.0f);

 gs_effect_t *effect = gs_get_effect();
 gs_eparam_t *matrix;
 gs_eparam_t *range_min;
 gs_eparam_t *range_max;

 if (!effect) {
  blog(LOG_WARNING, "obs_source_draw_set_color_matrix: no "
      "active effect!");
  return;
 }

 if (!obs_ptr_valid(color_matrix, "obs_source_draw_set_color_matrix"))
  return;

 if (!color_range_min)
  color_range_min = &color_range_min_def;
 if (!color_range_max)
  color_range_max = &color_range_max_def;

 matrix = gs_effect_get_param_by_name(effect, "color_matrix");
 range_min = gs_effect_get_param_by_name(effect, "color_range_min");
 range_max = gs_effect_get_param_by_name(effect, "color_range_max");

 gs_effect_set_matrix4(matrix, color_matrix);
 gs_effect_set_val(range_min, color_range_min, sizeof(float) * 3);
 gs_effect_set_val(range_max, color_range_max, sizeof(float) * 3);
}

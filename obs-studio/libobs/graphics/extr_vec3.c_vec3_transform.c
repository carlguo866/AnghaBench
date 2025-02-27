
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec4 {int dummy; } ;
struct vec3 {int dummy; } ;
struct matrix4 {int dummy; } ;


 int vec3_from_vec4 (struct vec3*,struct vec4*) ;
 int vec4_from_vec3 (struct vec4*,struct vec3 const*) ;
 int vec4_transform (struct vec4*,struct vec4*,struct matrix4 const*) ;

void vec3_transform(struct vec3 *dst, const struct vec3 *v,
      const struct matrix4 *m)
{
 struct vec4 v4;
 vec4_from_vec3(&v4, v);
 vec4_transform(&v4, &v4, m);
 vec3_from_vec4(dst, &v4);
}

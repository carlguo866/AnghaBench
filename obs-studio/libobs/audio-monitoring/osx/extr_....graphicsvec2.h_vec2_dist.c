
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec2 {int dummy; } ;


 float vec2_len (struct vec2*) ;
 int vec2_sub (struct vec2*,struct vec2 const*,struct vec2 const*) ;

__attribute__((used)) static inline float vec2_dist(const struct vec2 *v1, const struct vec2 *v2)
{
 struct vec2 temp;
 vec2_sub(&temp, v1, v2);
 return vec2_len(&temp);
}

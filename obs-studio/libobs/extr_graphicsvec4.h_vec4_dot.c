
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec4 {float x; void* m; } ;
typedef void* __m128 ;


 void* _mm_add_ps (int ,void*) ;
 int _mm_movehl_ps (void*,void*) ;
 void* _mm_mul_ps (void*,void*) ;
 int _mm_shuffle_ps (void*,void*,int) ;

__attribute__((used)) static inline float vec4_dot(const struct vec4 *v1, const struct vec4 *v2)
{
 struct vec4 add;
 __m128 mul = _mm_mul_ps(v1->m, v2->m);
 add.m = _mm_add_ps(_mm_movehl_ps(mul, mul), mul);
 add.m = _mm_add_ps(_mm_shuffle_ps(add.m, add.m, 0x55), add.m);
 return add.x;
}

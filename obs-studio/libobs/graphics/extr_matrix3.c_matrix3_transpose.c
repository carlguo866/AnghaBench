
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {void* m; } ;
struct TYPE_5__ {void* m; } ;
struct TYPE_4__ {void* m; } ;
struct matrix3 {TYPE_3__ z; TYPE_2__ y; TYPE_1__ x; int t; } ;
typedef int __m128 ;


 int _MM_SHUFFLE (int,int,int,int) ;
 int _mm_movehl_ps (void*,void*) ;
 int _mm_movelh_ps (void*,void*) ;
 void* _mm_shuffle_ps (int ,void*,int ) ;
 int vec3_neg (int *,int *) ;
 int vec3_rotate (int *,int *,struct matrix3 const*) ;

void matrix3_transpose(struct matrix3 *dst, const struct matrix3 *m)
{
 __m128 tmp1, tmp2;
 vec3_rotate(&dst->t, &m->t, m);
 vec3_neg(&dst->t, &dst->t);

 tmp1 = _mm_movelh_ps(m->x.m, m->y.m);
 tmp2 = _mm_movehl_ps(m->y.m, m->x.m);
 dst->x.m = _mm_shuffle_ps(tmp1, m->z.m, _MM_SHUFFLE(3, 0, 2, 0));
 dst->y.m = _mm_shuffle_ps(tmp1, m->z.m, _MM_SHUFFLE(3, 1, 3, 1));
 dst->z.m = _mm_shuffle_ps(tmp2, m->z.m, _MM_SHUFFLE(3, 2, 2, 0));
}

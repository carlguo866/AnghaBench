
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int m; } ;
struct TYPE_11__ {int m; } ;
struct TYPE_10__ {int m; } ;
struct TYPE_9__ {int m; } ;
struct matrix4 {TYPE_4__ t; TYPE_3__ z; TYPE_2__ y; TYPE_1__ x; } ;
struct TYPE_15__ {float w; int m; } ;
struct TYPE_14__ {float w; int m; } ;
struct TYPE_13__ {float w; int m; } ;
struct TYPE_16__ {float w; int m; } ;
struct matrix3 {TYPE_7__ t; TYPE_6__ z; TYPE_5__ y; TYPE_8__ x; } ;



void matrix3_from_matrix4(struct matrix3 *dst, const struct matrix4 *m)
{
 dst->x.m = m->x.m;
 dst->y.m = m->y.m;
 dst->z.m = m->z.m;
 dst->t.m = m->t.m;
 dst->x.w = 0.0f;
 dst->y.w = 0.0f;
 dst->z.w = 0.0f;
 dst->t.w = 0.0f;
}

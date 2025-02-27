
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int (* convert ) (int *,TYPE_4__*,float const*,float*) ;} ;
struct paint_tri_data {TYPE_4__ cc; TYPE_3__* dest; TYPE_2__* shade; } ;
struct TYPE_6__ {float* c; } ;
typedef TYPE_1__ fz_vertex ;
struct TYPE_7__ {scalar_t__ use_function; } ;
typedef TYPE_2__ fz_shade ;
struct TYPE_8__ {int alpha; int n; int colorspace; } ;
typedef TYPE_3__ fz_pixmap ;
typedef int fz_context ;


 int fz_colorspace_n (int *,int ) ;
 int stub1 (int *,TYPE_4__*,float const*,float*) ;

__attribute__((used)) static void
prepare_mesh_vertex(fz_context *ctx, void *arg, fz_vertex *v, const float *input)
{
 struct paint_tri_data *ptd = (struct paint_tri_data *)arg;
 const fz_shade *shade = ptd->shade;
 fz_pixmap *dest = ptd->dest;
 float *output = v->c;
 int i;

 if (shade->use_function)
  output[0] = input[0] * 255;
 else
 {
  int n = fz_colorspace_n(ctx, dest->colorspace);
  int a = dest->alpha;
  int m = dest->n - a;
  if (ptd->cc.convert)
   ptd->cc.convert(ctx, &ptd->cc, input, output);
  for (i = 0; i < n; i++)
   output[i] *= 255;
  for (; i < m; i++)
   output[i] = 0;
  if (a)
   output[i] = 255;
 }
}

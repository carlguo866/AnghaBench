
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {int** data; int* linesize; } ;
struct TYPE_6__ {scalar_t__ m; } ;
typedef TYPE_1__ CiescopeContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterContext ;


 int rgb_to_xy (double,double,double,double*,double*,double*,double const**) ;

__attribute__((used)) static void filter_rgb24(AVFilterContext *ctx, AVFrame *in, double *cx, double *cy, int x, int y)
{
    CiescopeContext *s = ctx->priv;
    const uint8_t* src = in->data[0] + in->linesize[0] * y + x * 3;
    double r = src[0] / 255.;
    double g = src[1] / 255.;
    double b = src[2] / 255.;
    double cz;

    rgb_to_xy(r, g, b, cx, cy, &cz, (const double (*)[3])s->m);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pdf_processor ;
struct TYPE_2__ {int * out; } ;
typedef TYPE_1__ pdf_output_processor ;
typedef int fz_output ;
typedef int fz_context ;


 int fz_write_printf (int *,int *,char*,float,float,float,float) ;

__attribute__((used)) static void
pdf_out_y(fz_context *ctx, pdf_processor *proc, float x1, float y1, float x3, float y3)
{
 fz_output *out = ((pdf_output_processor*)proc)->out;
 fz_write_printf(ctx, out, "%g %g %g %g y\n", x1, y1, x3, y3);
}

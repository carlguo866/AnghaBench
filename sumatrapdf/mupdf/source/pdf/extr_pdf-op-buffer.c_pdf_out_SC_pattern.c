
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pdf_processor ;
typedef int pdf_pattern ;
struct TYPE_2__ {int * out; } ;
typedef TYPE_1__ pdf_output_processor ;
typedef int fz_output ;
typedef int fz_context ;


 int fz_write_printf (int *,int *,char*,...) ;

__attribute__((used)) static void
pdf_out_SC_pattern(fz_context *ctx, pdf_processor *proc, const char *name, pdf_pattern *pat, int n, float *color)
{
 fz_output *out = ((pdf_output_processor*)proc)->out;
 int i;
 for (i = 0; i < n; ++i)
  fz_write_printf(ctx, out, "%g ", color[i]);
 fz_write_printf(ctx, out, "%n SCN\n", name);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int depth; int * out; } ;
typedef TYPE_1__ fz_trace_device ;
typedef int fz_path ;
typedef int fz_output ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_colorspace ;
typedef int fz_color_params ;


 int fz_trace_color (int *,int *,int *,float const*,float) ;
 int fz_trace_indent (int *,int *,int ) ;
 int fz_trace_matrix (int *,int *,int ) ;
 int fz_trace_path (int *,TYPE_1__*,int const*) ;
 int fz_write_printf (int *,int *,char*) ;

__attribute__((used)) static void
fz_trace_fill_path(fz_context *ctx, fz_device *dev_, const fz_path *path, int even_odd, fz_matrix ctm,
 fz_colorspace *colorspace, const float *color, float alpha, fz_color_params color_params)
{
 fz_trace_device *dev = (fz_trace_device*)dev_;
 fz_output *out = dev->out;
 fz_trace_indent(ctx, out, dev->depth);
 fz_write_printf(ctx, out, "<fill_path");
 if (even_odd)
  fz_write_printf(ctx, out, " winding=\"eofill\"");
 else
  fz_write_printf(ctx, out, " winding=\"nonzero\"");
 fz_trace_color(ctx, out, colorspace, color, alpha);
 fz_trace_matrix(ctx, out, ctm);
 fz_write_printf(ctx, out, ">\n");
 fz_trace_path(ctx, dev, path);
 fz_trace_indent(ctx, out, dev->depth);
 fz_write_printf(ctx, out, "</fill_path>\n");
}

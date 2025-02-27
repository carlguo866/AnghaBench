
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int depth; int * out; } ;
typedef TYPE_1__ fz_trace_device ;
struct TYPE_5__ {int y1; int x1; int y0; int x0; } ;
typedef TYPE_2__ fz_rect ;
typedef int fz_output ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_colorspace ;
typedef int fz_color_params ;


 int fz_trace_indent (int *,int *,int ) ;
 int fz_write_printf (int *,int *,char*,...) ;

__attribute__((used)) static void
fz_trace_begin_mask(fz_context *ctx, fz_device *dev_, fz_rect bbox, int luminosity, fz_colorspace *colorspace, const float *color, fz_color_params color_params)
{
 fz_trace_device *dev = (fz_trace_device*)dev_;
 fz_output *out = dev->out;
 fz_trace_indent(ctx, out, dev->depth);
 fz_write_printf(ctx, out, "<clip_mask bbox=\"%g %g %g %g\" s=\"%s\"",
  bbox.x0, bbox.y0, bbox.x1, bbox.y1,
  luminosity ? "luminosity" : "alpha");
 fz_write_printf(ctx, out, ">\n");
 dev->depth++;
}

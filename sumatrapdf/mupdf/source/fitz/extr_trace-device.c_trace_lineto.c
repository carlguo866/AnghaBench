
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int depth; int * out; } ;
typedef TYPE_1__ fz_trace_device ;
typedef int fz_output ;
typedef int fz_context ;


 int fz_trace_indent (int *,int *,int ) ;
 int fz_write_printf (int *,int *,char*,float,float) ;

__attribute__((used)) static void
trace_lineto(fz_context *ctx, void *dev_, float x, float y)
{
 fz_trace_device *dev = (fz_trace_device*)dev_;
 fz_output *out = dev->out;
 fz_trace_indent(ctx, out, dev->depth);
 fz_write_printf(ctx, out, "<lineto x=\"%g\" y=\"%g\"/>\n", x, y);
}

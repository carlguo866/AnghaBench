
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int layers; int * out; } ;
typedef TYPE_1__ svg_device ;
typedef int fz_output ;
typedef int fz_device ;
typedef int fz_context ;


 int fz_write_printf (int *,int *,char*,int ,char const*) ;

__attribute__((used)) static void
svg_dev_begin_layer(fz_context *ctx, fz_device *dev, const char *name)
{
 svg_device *sdev = (svg_device*)dev;
 fz_output *out = sdev->out;

 sdev->layers++;
 fz_write_printf(ctx, out, "<g id=\"Layer-%d\" data-name=\"%s\">\n", sdev->layers, name);
}

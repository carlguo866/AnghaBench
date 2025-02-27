
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct device_node* of_node; } ;
struct spi_device {TYPE_1__ dev; } ;
struct panel_drv_data {struct omap_dss_device* in; } ;
struct omap_dss_device {int dummy; } ;
struct device_node {int dummy; } ;


 scalar_t__ IS_ERR (struct omap_dss_device*) ;
 int PTR_ERR (struct omap_dss_device*) ;
 int dev_err (TYPE_1__*,char*) ;
 struct panel_drv_data* dev_get_drvdata (TYPE_1__*) ;
 struct omap_dss_device* omapdss_of_find_source_for_first_ep (struct device_node*) ;

__attribute__((used)) static int td028ttec1_probe_of(struct spi_device *spi)
{
 struct device_node *node = spi->dev.of_node;
 struct panel_drv_data *ddata = dev_get_drvdata(&spi->dev);
 struct omap_dss_device *in;

 in = omapdss_of_find_source_for_first_ep(node);
 if (IS_ERR(in)) {
  dev_err(&spi->dev, "failed to find video source\n");
  return PTR_ERR(in);
 }

 ddata->in = in;

 return 0;
}

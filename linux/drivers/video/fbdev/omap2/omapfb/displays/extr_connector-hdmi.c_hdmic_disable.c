
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct panel_drv_data {int dev; struct omap_dss_device* in; } ;
struct TYPE_4__ {TYPE_1__* hdmi; } ;
struct omap_dss_device {int state; TYPE_2__ ops; } ;
struct TYPE_3__ {int (* disable ) (struct omap_dss_device*) ;} ;


 int OMAP_DSS_DISPLAY_DISABLED ;
 int dev_dbg (int ,char*) ;
 int omapdss_device_is_enabled (struct omap_dss_device*) ;
 int stub1 (struct omap_dss_device*) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;

__attribute__((used)) static void hdmic_disable(struct omap_dss_device *dssdev)
{
 struct panel_drv_data *ddata = to_panel_data(dssdev);
 struct omap_dss_device *in = ddata->in;

 dev_dbg(ddata->dev, "disable\n");

 if (!omapdss_device_is_enabled(dssdev))
  return;

 in->ops.hdmi->disable(in);

 dssdev->state = OMAP_DSS_DISPLAY_DISABLED;
}

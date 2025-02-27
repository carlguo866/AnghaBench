
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct panel_drv_data {int timings; struct omap_dss_device* in; } ;
struct TYPE_3__ {TYPE_2__* dvi; } ;
struct omap_dss_device {int state; TYPE_1__ ops; } ;
struct TYPE_4__ {int (* enable ) (struct omap_dss_device*) ;int (* set_timings ) (struct omap_dss_device*,int *) ;} ;


 int ENODEV ;
 int OMAP_DSS_DISPLAY_ACTIVE ;
 int omapdss_device_is_connected (struct omap_dss_device*) ;
 scalar_t__ omapdss_device_is_enabled (struct omap_dss_device*) ;
 int stub1 (struct omap_dss_device*,int *) ;
 int stub2 (struct omap_dss_device*) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;

__attribute__((used)) static int dvic_enable(struct omap_dss_device *dssdev)
{
 struct panel_drv_data *ddata = to_panel_data(dssdev);
 struct omap_dss_device *in = ddata->in;
 int r;

 if (!omapdss_device_is_connected(dssdev))
  return -ENODEV;

 if (omapdss_device_is_enabled(dssdev))
  return 0;

 in->ops.dvi->set_timings(in, &ddata->timings);

 r = in->ops.dvi->enable(in);
 if (r)
  return r;

 dssdev->state = OMAP_DSS_DISPLAY_ACTIVE;

 return 0;
}

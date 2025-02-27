
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct edid {int dummy; } ;
struct drm_connector {scalar_t__ force; } ;


 scalar_t__ DRM_FORCE_OFF ;
 scalar_t__ DRM_FORCE_UNSPECIFIED ;
 struct edid* drm_do_get_edid (struct drm_connector*,int ,struct i2c_adapter*) ;
 int drm_do_probe_ddc_edid ;
 int drm_get_displayid (struct drm_connector*,struct edid*) ;
 int drm_probe_ddc (struct i2c_adapter*) ;

struct edid *drm_get_edid(struct drm_connector *connector,
     struct i2c_adapter *adapter)
{
 struct edid *edid;

 if (connector->force == DRM_FORCE_OFF)
  return ((void*)0);

 if (connector->force == DRM_FORCE_UNSPECIFIED && !drm_probe_ddc(adapter))
  return ((void*)0);

 edid = drm_do_get_edid(connector, drm_do_probe_ddc_edid, adapter);
 if (edid)
  drm_get_displayid(connector, edid);
 return edid;
}

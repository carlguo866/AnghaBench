
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_connector {int dummy; } ;
struct dw_hdmi {TYPE_1__* plat_data; struct drm_connector connector; } ;
struct drm_display_mode {int flags; } ;
struct drm_bridge {struct dw_hdmi* driver_private; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;
struct TYPE_2__ {int (* mode_valid ) (struct drm_connector*,struct drm_display_mode const*) ;} ;


 int DRM_MODE_FLAG_DBLCLK ;
 int MODE_BAD ;
 int MODE_OK ;
 int stub1 (struct drm_connector*,struct drm_display_mode const*) ;

__attribute__((used)) static enum drm_mode_status
dw_hdmi_bridge_mode_valid(struct drm_bridge *bridge,
     const struct drm_display_mode *mode)
{
 struct dw_hdmi *hdmi = bridge->driver_private;
 struct drm_connector *connector = &hdmi->connector;
 enum drm_mode_status mode_status = MODE_OK;


 if (mode->flags & DRM_MODE_FLAG_DBLCLK)
  return MODE_BAD;

 if (hdmi->plat_data->mode_valid)
  mode_status = hdmi->plat_data->mode_valid(connector, mode);

 return mode_status;
}

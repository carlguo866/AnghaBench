
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdfld_dsi_connector {int dummy; } ;
struct mdfld_dsi_config {struct drm_display_mode* fixed_mode; } ;
struct drm_display_mode {int flags; scalar_t__ hdisplay; scalar_t__ vdisplay; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int DRM_MODE_FLAG_DBLSCAN ;
 int DRM_MODE_FLAG_INTERLACE ;
 int MODE_NO_DBLESCAN ;
 int MODE_NO_INTERLACE ;
 int MODE_OK ;
 int MODE_PANEL ;
 struct mdfld_dsi_connector* mdfld_dsi_connector (struct drm_connector*) ;
 struct mdfld_dsi_config* mdfld_dsi_get_config (struct mdfld_dsi_connector*) ;

__attribute__((used)) static enum drm_mode_status mdfld_dsi_connector_mode_valid(struct drm_connector *connector,
      struct drm_display_mode *mode)
{
 struct mdfld_dsi_connector *dsi_connector =
     mdfld_dsi_connector(connector);
 struct mdfld_dsi_config *dsi_config =
     mdfld_dsi_get_config(dsi_connector);
 struct drm_display_mode *fixed_mode = dsi_config->fixed_mode;

 if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
  return MODE_NO_DBLESCAN;

 if (mode->flags & DRM_MODE_FLAG_INTERLACE)
  return MODE_NO_INTERLACE;






 if (fixed_mode) {
  if (mode->hdisplay != fixed_mode->hdisplay)
   return MODE_PANEL;

  if (mode->vdisplay != fixed_mode->vdisplay)
   return MODE_PANEL;
 }

 return MODE_OK;
}

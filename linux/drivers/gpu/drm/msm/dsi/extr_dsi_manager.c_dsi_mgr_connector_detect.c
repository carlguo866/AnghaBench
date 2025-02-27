
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi {scalar_t__ panel; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int connector_status_connected ;
 int connector_status_disconnected ;
 int dsi_mgr_connector_get_id (struct drm_connector*) ;
 struct msm_dsi* dsi_mgr_get_dsi (int) ;

__attribute__((used)) static enum drm_connector_status dsi_mgr_connector_detect(
  struct drm_connector *connector, bool force)
{
 int id = dsi_mgr_connector_get_id(connector);
 struct msm_dsi *msm_dsi = dsi_mgr_get_dsi(id);

 return msm_dsi->panel ? connector_status_connected :
  connector_status_disconnected;
}

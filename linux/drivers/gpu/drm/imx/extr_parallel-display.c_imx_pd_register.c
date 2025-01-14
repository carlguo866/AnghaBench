
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dpms; } ;
struct drm_encoder {int dummy; } ;
struct imx_parallel_display {TYPE_1__ connector; TYPE_5__* dev; int bridge; scalar_t__ panel; struct drm_encoder encoder; } ;
struct drm_device {int dummy; } ;
struct TYPE_7__ {int of_node; } ;


 int DRM_MODE_CONNECTOR_DPI ;
 int DRM_MODE_DPMS_OFF ;
 int DRM_MODE_ENCODER_NONE ;
 int dev_err (TYPE_5__*,char*,int) ;
 int drm_bridge_attach (struct drm_encoder*,int ,int *) ;
 int drm_connector_attach_encoder (TYPE_1__*,struct drm_encoder*) ;
 int drm_connector_helper_add (TYPE_1__*,int *) ;
 int drm_connector_init (struct drm_device*,TYPE_1__*,int *,int ) ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ,int *) ;
 int drm_panel_attach (scalar_t__,TYPE_1__*) ;
 int imx_drm_encoder_parse_of (struct drm_device*,struct drm_encoder*,int ) ;
 int imx_pd_connector_funcs ;
 int imx_pd_connector_helper_funcs ;
 int imx_pd_encoder_funcs ;
 int imx_pd_encoder_helper_funcs ;

__attribute__((used)) static int imx_pd_register(struct drm_device *drm,
 struct imx_parallel_display *imxpd)
{
 struct drm_encoder *encoder = &imxpd->encoder;
 int ret;

 ret = imx_drm_encoder_parse_of(drm, encoder, imxpd->dev->of_node);
 if (ret)
  return ret;






 imxpd->connector.dpms = DRM_MODE_DPMS_OFF;

 drm_encoder_helper_add(encoder, &imx_pd_encoder_helper_funcs);
 drm_encoder_init(drm, encoder, &imx_pd_encoder_funcs,
    DRM_MODE_ENCODER_NONE, ((void*)0));

 if (!imxpd->bridge) {
  drm_connector_helper_add(&imxpd->connector,
    &imx_pd_connector_helper_funcs);
  drm_connector_init(drm, &imxpd->connector,
       &imx_pd_connector_funcs,
       DRM_MODE_CONNECTOR_DPI);
 }

 if (imxpd->panel)
  drm_panel_attach(imxpd->panel, &imxpd->connector);

 if (imxpd->bridge) {
  ret = drm_bridge_attach(encoder, imxpd->bridge, ((void*)0));
  if (ret < 0) {
   dev_err(imxpd->dev, "failed to attach bridge: %d\n",
    ret);
   return ret;
  }
 } else {
  drm_connector_attach_encoder(&imxpd->connector, encoder);
 }

 return 0;
}

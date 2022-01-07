
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int polled; int interlace_allowed; scalar_t__ doublescan_allowed; } ;
struct vc4_hdmi_connector {struct drm_encoder* encoder; struct drm_connector base; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {int dev; } ;


 int DRM_CONNECTOR_POLL_CONNECT ;
 int DRM_CONNECTOR_POLL_DISCONNECT ;
 int DRM_MODE_CONNECTOR_HDMIA ;
 int ENOMEM ;
 struct drm_connector* ERR_PTR (int) ;
 int GFP_KERNEL ;
 struct vc4_hdmi_connector* devm_kzalloc (int ,int,int ) ;
 int drm_connector_attach_encoder (struct drm_connector*,struct drm_encoder*) ;
 int drm_connector_attach_tv_margin_properties (struct drm_connector*) ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init (struct drm_device*,struct drm_connector*,int *,int ) ;
 int drm_mode_create_tv_margin_properties (struct drm_device*) ;
 int vc4_hdmi_connector_funcs ;
 int vc4_hdmi_connector_helper_funcs ;

__attribute__((used)) static struct drm_connector *vc4_hdmi_connector_init(struct drm_device *dev,
           struct drm_encoder *encoder)
{
 struct drm_connector *connector;
 struct vc4_hdmi_connector *hdmi_connector;
 int ret;

 hdmi_connector = devm_kzalloc(dev->dev, sizeof(*hdmi_connector),
          GFP_KERNEL);
 if (!hdmi_connector)
  return ERR_PTR(-ENOMEM);
 connector = &hdmi_connector->base;

 hdmi_connector->encoder = encoder;

 drm_connector_init(dev, connector, &vc4_hdmi_connector_funcs,
      DRM_MODE_CONNECTOR_HDMIA);
 drm_connector_helper_add(connector, &vc4_hdmi_connector_helper_funcs);


 ret = drm_mode_create_tv_margin_properties(dev);
 if (ret)
  return ERR_PTR(ret);

 drm_connector_attach_tv_margin_properties(connector);

 connector->polled = (DRM_CONNECTOR_POLL_CONNECT |
        DRM_CONNECTOR_POLL_DISCONNECT);

 connector->interlace_allowed = 1;
 connector->doublescan_allowed = 0;

 drm_connector_attach_encoder(connector, encoder);

 return connector;
}

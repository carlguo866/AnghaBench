
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int (* write_eld ) (struct drm_connector*,struct drm_crtc*) ;} ;
struct drm_i915_private {TYPE_3__ display; } ;
struct drm_encoder {struct drm_device* dev; struct drm_crtc* crtc; } ;
struct drm_display_mode {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_5__ {int id; } ;
struct drm_connector {int* eld; TYPE_4__* encoder; TYPE_1__ base; } ;
struct TYPE_6__ {int id; } ;
struct TYPE_8__ {TYPE_2__ base; } ;


 int DRM_DEBUG_DRIVER (char*,int ,int ,int ,int ) ;
 int drm_av_sync_delay (struct drm_connector*,struct drm_display_mode*) ;
 int drm_get_connector_name (struct drm_connector*) ;
 int drm_get_encoder_name (TYPE_4__*) ;
 struct drm_connector* drm_select_eld (struct drm_encoder*,struct drm_display_mode*) ;
 int stub1 (struct drm_connector*,struct drm_crtc*) ;

void intel_write_eld(struct drm_encoder *encoder,
       struct drm_display_mode *mode)
{
 struct drm_crtc *crtc = encoder->crtc;
 struct drm_connector *connector;
 struct drm_device *dev = encoder->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;

 connector = drm_select_eld(encoder, mode);
 if (!connector)
  return;

 DRM_DEBUG_DRIVER("ELD on [CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
    connector->base.id,
    drm_get_connector_name(connector),
    connector->encoder->base.id,
    drm_get_encoder_name(connector->encoder));

 connector->eld[6] = drm_av_sync_delay(connector, mode) / 2;

 if (dev_priv->display.write_eld)
  dev_priv->display.write_eld(connector, crtc);
}

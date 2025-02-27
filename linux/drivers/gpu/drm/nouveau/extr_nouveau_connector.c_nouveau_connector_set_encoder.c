
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct nouveau_encoder {TYPE_6__* dcb; } ;
struct TYPE_7__ {scalar_t__ family; } ;
struct TYPE_8__ {TYPE_1__ info; } ;
struct TYPE_9__ {TYPE_2__ device; } ;
struct nouveau_drm {TYPE_3__ client; } ;
struct nouveau_connector {scalar_t__ type; struct nouveau_encoder* detected_encoder; } ;
struct TYPE_11__ {int dvi_i_subconnector_property; } ;
struct drm_device {TYPE_5__ mode_config; TYPE_4__* pdev; } ;
struct drm_connector {int interlace_allowed; int doublescan_allowed; int base; struct drm_device* dev; } ;
struct TYPE_12__ {scalar_t__ type; } ;
struct TYPE_10__ {int device; } ;


 scalar_t__ DCB_CONNECTOR_DVI_I ;
 scalar_t__ DCB_OUTPUT_LVDS ;
 scalar_t__ DCB_OUTPUT_TMDS ;
 int DRM_MODE_SUBCONNECTOR_DVIA ;
 int DRM_MODE_SUBCONNECTOR_DVID ;
 scalar_t__ NV_DEVICE_INFO_V0_CELSIUS ;
 scalar_t__ NV_DEVICE_INFO_V0_KELVIN ;
 scalar_t__ NV_DEVICE_INFO_V0_TESLA ;
 int drm_object_property_set_value (int *,int ,int ) ;
 struct nouveau_connector* nouveau_connector (struct drm_connector*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;

__attribute__((used)) static void
nouveau_connector_set_encoder(struct drm_connector *connector,
         struct nouveau_encoder *nv_encoder)
{
 struct nouveau_connector *nv_connector = nouveau_connector(connector);
 struct nouveau_drm *drm = nouveau_drm(connector->dev);
 struct drm_device *dev = connector->dev;

 if (nv_connector->detected_encoder == nv_encoder)
  return;
 nv_connector->detected_encoder = nv_encoder;

 if (drm->client.device.info.family >= NV_DEVICE_INFO_V0_TESLA) {
  connector->interlace_allowed = 1;
  connector->doublescan_allowed = 1;
 } else
 if (nv_encoder->dcb->type == DCB_OUTPUT_LVDS ||
     nv_encoder->dcb->type == DCB_OUTPUT_TMDS) {
  connector->doublescan_allowed = 0;
  connector->interlace_allowed = 0;
 } else {
  connector->doublescan_allowed = 1;
  if (drm->client.device.info.family == NV_DEVICE_INFO_V0_KELVIN ||
      (drm->client.device.info.family == NV_DEVICE_INFO_V0_CELSIUS &&
       (dev->pdev->device & 0x0ff0) != 0x0100 &&
       (dev->pdev->device & 0x0ff0) != 0x0150))

   connector->interlace_allowed = 0;
  else
   connector->interlace_allowed = 1;
 }

 if (nv_connector->type == DCB_CONNECTOR_DVI_I) {
  drm_object_property_set_value(&connector->base,
   dev->mode_config.dvi_i_subconnector_property,
   nv_encoder->dcb->type == DCB_OUTPUT_TMDS ?
   DRM_MODE_SUBCONNECTOR_DVID :
   DRM_MODE_SUBCONNECTOR_DVIA);
 }
}

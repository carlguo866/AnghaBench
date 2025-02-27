
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct drm_property {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_5__ {struct drm_property* scaling_mode_property; } ;
struct drm_device {TYPE_2__ mode_config; struct amdgpu_device* dev_private; } ;
struct drm_connector_helper_funcs {struct drm_encoder* (* best_encoder ) (struct drm_connector*) ;} ;
struct drm_connector {struct drm_connector_helper_funcs* helper_private; struct drm_encoder* encoder; struct drm_device* dev; } ;
struct amdgpu_encoder_atom_dig {int coherent_mode; } ;
struct TYPE_6__ {scalar_t__ clock; } ;
struct amdgpu_encoder {int underscan_type; int underscan_hborder; int underscan_vborder; int rmx_type; int base; TYPE_3__ native_mode; struct amdgpu_encoder_atom_dig* enc_priv; } ;
struct TYPE_4__ {struct drm_property* load_detect_property; struct drm_property* underscan_vborder_property; struct drm_property* underscan_hborder_property; struct drm_property* underscan_property; struct drm_property* dither_property; struct drm_property* audio_property; struct drm_property* coherent_mode_property; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
struct amdgpu_connector {int audio; int dither; int dac_load_detect; } ;
typedef enum amdgpu_rmx_type { ____Placeholder_amdgpu_rmx_type } amdgpu_rmx_type ;


 int DRM_MODE_ENCODER_TMDS ;




 int RMX_ASPECT ;
 int RMX_CENTER ;
 int RMX_FULL ;
 int RMX_OFF ;
 struct drm_encoder* amdgpu_connector_find_encoder (struct drm_connector*,int ) ;
 int amdgpu_connector_property_change_mode (int *) ;
 struct drm_encoder* stub1 (struct drm_connector*) ;
 struct amdgpu_connector* to_amdgpu_connector (struct drm_connector*) ;
 struct amdgpu_encoder* to_amdgpu_encoder (struct drm_encoder*) ;

__attribute__((used)) static int amdgpu_connector_set_property(struct drm_connector *connector,
       struct drm_property *property,
       uint64_t val)
{
 struct drm_device *dev = connector->dev;
 struct amdgpu_device *adev = dev->dev_private;
 struct drm_encoder *encoder;
 struct amdgpu_encoder *amdgpu_encoder;

 if (property == adev->mode_info.coherent_mode_property) {
  struct amdgpu_encoder_atom_dig *dig;
  bool new_coherent_mode;


  encoder = amdgpu_connector_find_encoder(connector, DRM_MODE_ENCODER_TMDS);
  if (!encoder)
   return 0;

  amdgpu_encoder = to_amdgpu_encoder(encoder);

  if (!amdgpu_encoder->enc_priv)
   return 0;

  dig = amdgpu_encoder->enc_priv;
  new_coherent_mode = val ? 1 : 0;
  if (dig->coherent_mode != new_coherent_mode) {
   dig->coherent_mode = new_coherent_mode;
   amdgpu_connector_property_change_mode(&amdgpu_encoder->base);
  }
 }

 if (property == adev->mode_info.audio_property) {
  struct amdgpu_connector *amdgpu_connector = to_amdgpu_connector(connector);

  encoder = amdgpu_connector_find_encoder(connector, DRM_MODE_ENCODER_TMDS);
  if (!encoder)
   return 0;

  amdgpu_encoder = to_amdgpu_encoder(encoder);

  if (amdgpu_connector->audio != val) {
   amdgpu_connector->audio = val;
   amdgpu_connector_property_change_mode(&amdgpu_encoder->base);
  }
 }

 if (property == adev->mode_info.dither_property) {
  struct amdgpu_connector *amdgpu_connector = to_amdgpu_connector(connector);

  encoder = amdgpu_connector_find_encoder(connector, DRM_MODE_ENCODER_TMDS);
  if (!encoder)
   return 0;

  amdgpu_encoder = to_amdgpu_encoder(encoder);

  if (amdgpu_connector->dither != val) {
   amdgpu_connector->dither = val;
   amdgpu_connector_property_change_mode(&amdgpu_encoder->base);
  }
 }

 if (property == adev->mode_info.underscan_property) {

  encoder = amdgpu_connector_find_encoder(connector, DRM_MODE_ENCODER_TMDS);
  if (!encoder)
   return 0;

  amdgpu_encoder = to_amdgpu_encoder(encoder);

  if (amdgpu_encoder->underscan_type != val) {
   amdgpu_encoder->underscan_type = val;
   amdgpu_connector_property_change_mode(&amdgpu_encoder->base);
  }
 }

 if (property == adev->mode_info.underscan_hborder_property) {

  encoder = amdgpu_connector_find_encoder(connector, DRM_MODE_ENCODER_TMDS);
  if (!encoder)
   return 0;

  amdgpu_encoder = to_amdgpu_encoder(encoder);

  if (amdgpu_encoder->underscan_hborder != val) {
   amdgpu_encoder->underscan_hborder = val;
   amdgpu_connector_property_change_mode(&amdgpu_encoder->base);
  }
 }

 if (property == adev->mode_info.underscan_vborder_property) {

  encoder = amdgpu_connector_find_encoder(connector, DRM_MODE_ENCODER_TMDS);
  if (!encoder)
   return 0;

  amdgpu_encoder = to_amdgpu_encoder(encoder);

  if (amdgpu_encoder->underscan_vborder != val) {
   amdgpu_encoder->underscan_vborder = val;
   amdgpu_connector_property_change_mode(&amdgpu_encoder->base);
  }
 }

 if (property == adev->mode_info.load_detect_property) {
  struct amdgpu_connector *amdgpu_connector =
   to_amdgpu_connector(connector);

  if (val == 0)
   amdgpu_connector->dac_load_detect = 0;
  else
   amdgpu_connector->dac_load_detect = 1;
 }

 if (property == dev->mode_config.scaling_mode_property) {
  enum amdgpu_rmx_type rmx_type;

  if (connector->encoder) {
   amdgpu_encoder = to_amdgpu_encoder(connector->encoder);
  } else {
   const struct drm_connector_helper_funcs *connector_funcs = connector->helper_private;
   amdgpu_encoder = to_amdgpu_encoder(connector_funcs->best_encoder(connector));
  }

  switch (val) {
  default:
  case 128: rmx_type = RMX_OFF; break;
  case 130: rmx_type = RMX_CENTER; break;
  case 131: rmx_type = RMX_ASPECT; break;
  case 129: rmx_type = RMX_FULL; break;
  }
  if (amdgpu_encoder->rmx_type == rmx_type)
   return 0;

  if ((rmx_type != 128) &&
      (amdgpu_encoder->native_mode.clock == 0))
   return 0;

  amdgpu_encoder->rmx_type = rmx_type;

  amdgpu_connector_property_change_mode(&amdgpu_encoder->base);
 }

 return 0;
}

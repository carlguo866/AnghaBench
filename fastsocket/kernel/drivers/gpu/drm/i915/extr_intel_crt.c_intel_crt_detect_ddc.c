
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_2__ base; } ;
struct intel_crt {TYPE_3__ base; } ;
struct i2c_adapter {int dummy; } ;
struct edid {int input; } ;
struct drm_i915_private {int crt_ddc_pin; } ;
struct drm_connector {int dummy; } ;
struct TYPE_4__ {struct drm_i915_private* dev_private; } ;


 int BUG_ON (int) ;
 int DRM_DEBUG_KMS (char*) ;
 int DRM_EDID_INPUT_DIGITAL ;
 scalar_t__ INTEL_OUTPUT_ANALOG ;
 struct intel_crt* intel_attached_crt (struct drm_connector*) ;
 struct edid* intel_crt_get_edid (struct drm_connector*,struct i2c_adapter*) ;
 struct i2c_adapter* intel_gmbus_get_adapter (struct drm_i915_private*,int ) ;
 int kfree (struct edid*) ;

__attribute__((used)) static bool intel_crt_detect_ddc(struct drm_connector *connector)
{
 struct intel_crt *crt = intel_attached_crt(connector);
 struct drm_i915_private *dev_priv = crt->base.base.dev->dev_private;
 struct edid *edid;
 struct i2c_adapter *i2c;

 BUG_ON(crt->base.type != INTEL_OUTPUT_ANALOG);

 i2c = intel_gmbus_get_adapter(dev_priv, dev_priv->crt_ddc_pin);
 edid = intel_crt_get_edid(connector, i2c);

 if (edid) {
  bool is_digital = edid->input & DRM_EDID_INPUT_DIGITAL;






  if (!is_digital) {
   DRM_DEBUG_KMS("CRT detected via DDC:0x50 [EDID]\n");
   return 1;
  }

  DRM_DEBUG_KMS("CRT not detected via DDC:0x50 [EDID reports a digital panel]\n");
 } else {
  DRM_DEBUG_KMS("CRT not detected via DDC:0x50 [no valid EDID found]\n");
 }

 kfree(edid);

 return 0;
}

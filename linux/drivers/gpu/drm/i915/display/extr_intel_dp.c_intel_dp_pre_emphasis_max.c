
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct intel_encoder {int port; } ;
struct intel_dp {int dummy; } ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;
struct TYPE_2__ {struct intel_encoder base; } ;


 int DP_TRAIN_PRE_EMPH_LEVEL_0 ;
 int DP_TRAIN_PRE_EMPH_LEVEL_1 ;
 int DP_TRAIN_PRE_EMPH_LEVEL_2 ;
 int DP_TRAIN_PRE_EMPH_LEVEL_3 ;




 int DP_TRAIN_VOLTAGE_SWING_MASK ;
 scalar_t__ HAS_DDI (struct drm_i915_private*) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_IVYBRIDGE (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int PORT_A ;
 TYPE_1__* dp_to_dig_port (struct intel_dp*) ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;
 int intel_ddi_dp_pre_emphasis_max (struct intel_encoder*,int) ;

u8
intel_dp_pre_emphasis_max(struct intel_dp *intel_dp, u8 voltage_swing)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 enum port port = encoder->port;

 if (HAS_DDI(dev_priv)) {
  return intel_ddi_dp_pre_emphasis_max(encoder, voltage_swing);
 } else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
  switch (voltage_swing & DP_TRAIN_VOLTAGE_SWING_MASK) {
  case 131:
   return DP_TRAIN_PRE_EMPH_LEVEL_3;
  case 130:
   return DP_TRAIN_PRE_EMPH_LEVEL_2;
  case 129:
   return DP_TRAIN_PRE_EMPH_LEVEL_1;
  case 128:
  default:
   return DP_TRAIN_PRE_EMPH_LEVEL_0;
  }
 } else if (IS_IVYBRIDGE(dev_priv) && port == PORT_A) {
  switch (voltage_swing & DP_TRAIN_VOLTAGE_SWING_MASK) {
  case 131:
   return DP_TRAIN_PRE_EMPH_LEVEL_2;
  case 130:
  case 129:
   return DP_TRAIN_PRE_EMPH_LEVEL_1;
  default:
   return DP_TRAIN_PRE_EMPH_LEVEL_0;
  }
 } else {
  switch (voltage_swing & DP_TRAIN_VOLTAGE_SWING_MASK) {
  case 131:
   return DP_TRAIN_PRE_EMPH_LEVEL_2;
  case 130:
   return DP_TRAIN_PRE_EMPH_LEVEL_2;
  case 129:
   return DP_TRAIN_PRE_EMPH_LEVEL_1;
  case 128:
  default:
   return DP_TRAIN_PRE_EMPH_LEVEL_0;
  }
 }
}

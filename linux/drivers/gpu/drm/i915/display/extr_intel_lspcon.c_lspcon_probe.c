
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_lspcon {int mode; } ;
struct i2c_adapter {int dummy; } ;
typedef enum drm_lspcon_mode { ____Placeholder_drm_lspcon_mode } drm_lspcon_mode ;
typedef enum drm_dp_dual_mode_type { ____Placeholder_drm_dp_dual_mode_type } drm_dp_dual_mode_type ;
struct TYPE_3__ {struct i2c_adapter ddc; } ;
struct TYPE_4__ {TYPE_1__ aux; } ;


 int DRM_DEBUG_KMS (char*,...) ;
 int DRM_DP_DUAL_MODE_LSPCON ;
 int DRM_ERROR (char*) ;
 int DRM_LSPCON_MODE_LS ;
 int DRM_LSPCON_MODE_PCON ;
 int drm_dp_dual_mode_detect (struct i2c_adapter*) ;
 int drm_dp_get_dual_mode_type_name (int) ;
 scalar_t__ lspcon_change_mode (struct intel_lspcon*,int) ;
 TYPE_2__* lspcon_to_intel_dp (struct intel_lspcon*) ;
 int lspcon_wait_mode (struct intel_lspcon*,int) ;
 scalar_t__ lspcon_wake_native_aux_ch (struct intel_lspcon*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static bool lspcon_probe(struct intel_lspcon *lspcon)
{
 int retry;
 enum drm_dp_dual_mode_type adaptor_type;
 struct i2c_adapter *adapter = &lspcon_to_intel_dp(lspcon)->aux.ddc;
 enum drm_lspcon_mode expected_mode;

 expected_mode = lspcon_wake_native_aux_ch(lspcon) ?
   DRM_LSPCON_MODE_PCON : DRM_LSPCON_MODE_LS;


 for (retry = 0; retry < 6; retry++) {
  if (retry)
   usleep_range(500, 1000);

  adaptor_type = drm_dp_dual_mode_detect(adapter);
  if (adaptor_type == DRM_DP_DUAL_MODE_LSPCON)
   break;
 }

 if (adaptor_type != DRM_DP_DUAL_MODE_LSPCON) {
  DRM_DEBUG_KMS("No LSPCON detected, found %s\n",
          drm_dp_get_dual_mode_type_name(adaptor_type));
  return 0;
 }


 DRM_DEBUG_KMS("LSPCON detected\n");
 lspcon->mode = lspcon_wait_mode(lspcon, expected_mode);






 if (lspcon->mode != DRM_LSPCON_MODE_PCON) {
  if (lspcon_change_mode(lspcon, DRM_LSPCON_MODE_PCON) < 0) {
   DRM_ERROR("LSPCON mode change to PCON failed\n");
   return 0;
  }
 }
 return 1;
}

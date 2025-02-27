
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_lspcon {scalar_t__ active; } ;
struct intel_dp {int* dpcd; int aux; } ;


 size_t DP_DPCD_REV ;
 int DP_SET_POWER ;
 int DP_SET_POWER_D0 ;
 int DP_SET_POWER_D3 ;
 int DRM_DEBUG_KMS (char*,char*) ;
 int DRM_MODE_DPMS_ON ;
 scalar_t__ downstream_hpd_needs_d0 (struct intel_dp*) ;
 struct intel_lspcon* dp_to_lspcon (struct intel_dp*) ;
 int drm_dp_dpcd_writeb (int *,int ,int ) ;
 int lspcon_wait_pcon_mode (struct intel_lspcon*) ;
 int msleep (int) ;

void intel_dp_sink_dpms(struct intel_dp *intel_dp, int mode)
{
 int ret, i;


 if (intel_dp->dpcd[DP_DPCD_REV] < 0x11)
  return;

 if (mode != DRM_MODE_DPMS_ON) {
  if (downstream_hpd_needs_d0(intel_dp))
   return;

  ret = drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER,
      DP_SET_POWER_D3);
 } else {
  struct intel_lspcon *lspcon = dp_to_lspcon(intel_dp);





  for (i = 0; i < 3; i++) {
   ret = drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER,
       DP_SET_POWER_D0);
   if (ret == 1)
    break;
   msleep(1);
  }

  if (ret == 1 && lspcon->active)
   lspcon_wait_pcon_mode(lspcon);
 }

 if (ret != 1)
  DRM_DEBUG_KMS("failed to %s sink power state\n",
         mode == DRM_MODE_DPMS_ON ? "enable" : "disable");
}

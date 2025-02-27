
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_4__ {int count; TYPE_1__* dpm_levels; } ;
struct vega10_dpm_table {TYPE_2__ mem_table; } ;
struct vega10_hwmgr {int vce_power_gated; int uvd_power_gated; struct vega10_dpm_table dpm_table; } ;
struct pp_hwmgr {struct vega10_hwmgr* backend; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_3__ {int value; } ;
 int EINVAL ;
 int PPSMC_MSG_GetAverageGfxActivity ;
 int PPSMC_MSG_GetAverageGfxclkActualFrequency ;
 int PPSMC_MSG_GetCurrentUclkIndex ;
 int PPSMC_MSG_GetTemperatureHBM ;
 int PPSMC_MSG_GetTemperatureHotspot ;
 int PP_TEMPERATURE_UNITS_PER_CENTIGRADES ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int SMUIO ;
 int SMUSVI0_PLANE0_CURRENTVID__CURRENT_SVI0_PLANE0_VID_MASK ;
 int SMUSVI0_PLANE0_CURRENTVID__CURRENT_SVI0_PLANE0_VID__SHIFT ;
 int convert_to_vddc (int ) ;
 int mmSMUSVI0_PLANE0_CURRENTVID ;
 int smum_get_argument (struct pp_hwmgr*) ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int ) ;
 int vega10_get_enabled_smc_features (struct pp_hwmgr*,int *) ;
 int vega10_get_gpu_power (struct pp_hwmgr*,int*) ;
 int vega10_thermal_get_temperature (struct pp_hwmgr*) ;

__attribute__((used)) static int vega10_read_sensor(struct pp_hwmgr *hwmgr, int idx,
         void *value, int *size)
{
 struct amdgpu_device *adev = hwmgr->adev;
 uint32_t sclk_mhz, mclk_idx, activity_percent = 0;
 struct vega10_hwmgr *data = hwmgr->backend;
 struct vega10_dpm_table *dpm_table = &data->dpm_table;
 int ret = 0;
 uint32_t val_vid;

 switch (idx) {
 case 136:
  smum_send_msg_to_smc(hwmgr, PPSMC_MSG_GetAverageGfxclkActualFrequency);
  sclk_mhz = smum_get_argument(hwmgr);
  *((uint32_t *)value) = sclk_mhz * 100;
  break;
 case 137:
  smum_send_msg_to_smc(hwmgr, PPSMC_MSG_GetCurrentUclkIndex);
  mclk_idx = smum_get_argument(hwmgr);
  if (mclk_idx < dpm_table->mem_table.count) {
   *((uint32_t *)value) = dpm_table->mem_table.dpm_levels[mclk_idx].value;
   *size = 4;
  } else {
   ret = -EINVAL;
  }
  break;
 case 135:
  smum_send_msg_to_smc_with_parameter(hwmgr, PPSMC_MSG_GetAverageGfxActivity, 0);
  activity_percent = smum_get_argument(hwmgr);
  *((uint32_t *)value) = activity_percent > 100 ? 100 : activity_percent;
  *size = 4;
  break;
 case 133:
  *((uint32_t *)value) = vega10_thermal_get_temperature(hwmgr);
  *size = 4;
  break;
 case 132:
  smum_send_msg_to_smc(hwmgr, PPSMC_MSG_GetTemperatureHotspot);
  *((uint32_t *)value) = smum_get_argument(hwmgr) *
   PP_TEMPERATURE_UNITS_PER_CENTIGRADES;
  *size = 4;
  break;
 case 131:
  smum_send_msg_to_smc(hwmgr, PPSMC_MSG_GetTemperatureHBM);
  *((uint32_t *)value) = smum_get_argument(hwmgr) *
   PP_TEMPERATURE_UNITS_PER_CENTIGRADES;
  *size = 4;
  break;
 case 130:
  *((uint32_t *)value) = data->uvd_power_gated ? 0 : 1;
  *size = 4;
  break;
 case 129:
  *((uint32_t *)value) = data->vce_power_gated ? 0 : 1;
  *size = 4;
  break;
 case 134:
  ret = vega10_get_gpu_power(hwmgr, (uint32_t *)value);
  break;
 case 128:
  val_vid = (RREG32_SOC15(SMUIO, 0, mmSMUSVI0_PLANE0_CURRENTVID) &
   SMUSVI0_PLANE0_CURRENTVID__CURRENT_SVI0_PLANE0_VID_MASK) >>
   SMUSVI0_PLANE0_CURRENTVID__CURRENT_SVI0_PLANE0_VID__SHIFT;
  *((uint32_t *)value) = (uint32_t)convert_to_vddc((uint8_t)val_vid);
  return 0;
 case 138:
  ret = vega10_get_enabled_smc_features(hwmgr, (uint64_t *)value);
  if (!ret)
   *size = 8;
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}

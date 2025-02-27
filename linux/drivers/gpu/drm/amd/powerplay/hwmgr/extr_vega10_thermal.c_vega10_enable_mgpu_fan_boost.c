
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {scalar_t__ FanThrottlingRpm; } ;
struct TYPE_9__ {TYPE_5__ pp_table; } ;
struct vega10_hwmgr {TYPE_4__ smc_state_table; TYPE_1__* smu_features; } ;
struct TYPE_7__ {scalar_t__ usMGpuThrottlingRPMLimit; } ;
struct TYPE_8__ {TYPE_2__ advanceFanControlParameters; } ;
struct pp_hwmgr {TYPE_3__ thermal_controller; struct vega10_hwmgr* backend; } ;
struct TYPE_6__ {int supported; } ;
typedef TYPE_5__ PPTable_t ;


 size_t GNLD_FAN_CONTROL ;
 int PPTABLE ;
 int pr_info (char*) ;
 int smum_smc_table_manager (struct pp_hwmgr*,int *,int ,int) ;
 int vega10_disable_fan_control_feature (struct pp_hwmgr*) ;
 int vega10_enable_fan_control_feature (struct pp_hwmgr*) ;

int vega10_enable_mgpu_fan_boost(struct pp_hwmgr *hwmgr)
{
 struct vega10_hwmgr *data = hwmgr->backend;
 PPTable_t *table = &(data->smc_state_table.pp_table);
 int ret;

 if (!data->smu_features[GNLD_FAN_CONTROL].supported)
  return 0;

 if (!hwmgr->thermal_controller.advanceFanControlParameters.
   usMGpuThrottlingRPMLimit)
  return 0;

 table->FanThrottlingRpm = hwmgr->thermal_controller.
   advanceFanControlParameters.usMGpuThrottlingRPMLimit;

 ret = smum_smc_table_manager(hwmgr,
    (uint8_t *)(&(data->smc_state_table.pp_table)),
    PPTABLE, 0);
 if (ret) {
  pr_info("Failed to update fan control table in pptable!");
  return ret;
 }

 ret = vega10_disable_fan_control_feature(hwmgr);
 if (ret) {
  pr_info("Attempt to disable SMC fan control feature failed!");
  return ret;
 }

 ret = vega10_enable_fan_control_feature(hwmgr);
 if (ret)
  pr_info("Attempt to enable SMC fan control feature failed!");

 return ret;
}

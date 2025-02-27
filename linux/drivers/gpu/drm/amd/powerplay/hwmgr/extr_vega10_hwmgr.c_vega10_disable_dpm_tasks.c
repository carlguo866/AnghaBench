
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int PHM_PlatformCaps_ThermalController ;
 int PP_ASSERT_WITH_CODE (int,char*,int) ;
 scalar_t__ PP_CAP (int ) ;
 int SMC_DPM_FEATURES ;
 int vega10_acg_disable (struct pp_hwmgr*) ;
 int vega10_avfs_enable (struct pp_hwmgr*,int) ;
 int vega10_disable_deep_sleep_master_switch (struct pp_hwmgr*) ;
 int vega10_disable_didt_config (struct pp_hwmgr*) ;
 int vega10_disable_power_containment (struct pp_hwmgr*) ;
 int vega10_disable_thermal_protection (struct pp_hwmgr*) ;
 int vega10_disable_ulv (struct pp_hwmgr*) ;
 int vega10_enable_disable_PCC_limit_feature (struct pp_hwmgr*,int) ;
 int vega10_stop_dpm (struct pp_hwmgr*,int ) ;

__attribute__((used)) static int vega10_disable_dpm_tasks(struct pp_hwmgr *hwmgr)
{
 int tmp_result, result = 0;

 if (PP_CAP(PHM_PlatformCaps_ThermalController))
  vega10_disable_thermal_protection(hwmgr);

 tmp_result = vega10_disable_power_containment(hwmgr);
 PP_ASSERT_WITH_CODE((tmp_result == 0),
   "Failed to disable power containment!", result = tmp_result);

 tmp_result = vega10_disable_didt_config(hwmgr);
 PP_ASSERT_WITH_CODE((tmp_result == 0),
   "Failed to disable didt config!", result = tmp_result);

 tmp_result = vega10_avfs_enable(hwmgr, 0);
 PP_ASSERT_WITH_CODE((tmp_result == 0),
   "Failed to disable AVFS!", result = tmp_result);

 tmp_result = vega10_stop_dpm(hwmgr, SMC_DPM_FEATURES);
 PP_ASSERT_WITH_CODE((tmp_result == 0),
   "Failed to stop DPM!", result = tmp_result);

 tmp_result = vega10_disable_deep_sleep_master_switch(hwmgr);
 PP_ASSERT_WITH_CODE((tmp_result == 0),
   "Failed to disable deep sleep!", result = tmp_result);

 tmp_result = vega10_disable_ulv(hwmgr);
 PP_ASSERT_WITH_CODE((tmp_result == 0),
   "Failed to disable ulv!", result = tmp_result);

 tmp_result = vega10_acg_disable(hwmgr);
 PP_ASSERT_WITH_CODE((tmp_result == 0),
   "Failed to disable acg!", result = tmp_result);

 vega10_enable_disable_PCC_limit_feature(hwmgr, 0);
 return result;
}

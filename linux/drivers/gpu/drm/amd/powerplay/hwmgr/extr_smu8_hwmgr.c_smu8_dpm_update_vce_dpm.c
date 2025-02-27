
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int hard_min_clk; } ;
struct smu8_hwmgr {TYPE_2__ vce_dpm; } ;
struct TYPE_4__ {struct phm_vce_clock_voltage_dependency_table* vce_clock_voltage_dependency_table; } ;
struct pp_hwmgr {scalar_t__ en_umd_pstate; TYPE_1__ dyn_state; struct smu8_hwmgr* backend; } ;
struct phm_vce_clock_voltage_dependency_table {int count; TYPE_3__* entries; } ;
struct TYPE_6__ {int ecclk; } ;


 int PHM_PlatformCaps_StablePState ;
 int PPSMC_MSG_SetEclkHardMin ;
 int PPSMC_MSG_SetEclkSoftMin ;
 scalar_t__ PP_CAP (int ) ;
 int smu8_get_eclk_level (struct pp_hwmgr*,int ,int ) ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int) ;

__attribute__((used)) static int smu8_dpm_update_vce_dpm(struct pp_hwmgr *hwmgr)
{
 struct smu8_hwmgr *data = hwmgr->backend;
 struct phm_vce_clock_voltage_dependency_table *ptable =
  hwmgr->dyn_state.vce_clock_voltage_dependency_table;


 if (PP_CAP(PHM_PlatformCaps_StablePState) ||
     hwmgr->en_umd_pstate) {
  data->vce_dpm.hard_min_clk =
      ptable->entries[ptable->count - 1].ecclk;

  smum_send_msg_to_smc_with_parameter(hwmgr,
   PPSMC_MSG_SetEclkHardMin,
   smu8_get_eclk_level(hwmgr,
    data->vce_dpm.hard_min_clk,
    PPSMC_MSG_SetEclkHardMin));
 } else {

  smum_send_msg_to_smc_with_parameter(hwmgr,
     PPSMC_MSG_SetEclkHardMin, 0);


  smum_send_msg_to_smc_with_parameter(hwmgr,
     PPSMC_MSG_SetEclkSoftMin, 1);
 }
 return 0;
}

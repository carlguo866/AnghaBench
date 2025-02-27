
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int hard_min_clk; } ;
struct smu8_hwmgr {TYPE_3__ uvd_dpm; } ;
struct TYPE_5__ {struct phm_uvd_clock_voltage_dependency_table* uvd_clock_voltage_dependency_table; } ;
struct pp_hwmgr {scalar_t__ en_umd_pstate; TYPE_2__ dyn_state; struct smu8_hwmgr* backend; } ;
struct phm_uvd_clock_voltage_dependency_table {int count; TYPE_1__* entries; } ;
struct TYPE_4__ {int vclk; } ;


 int PHM_PlatformCaps_StablePState ;
 int PPSMC_MSG_SetUvdHardMin ;
 scalar_t__ PP_CAP (int ) ;
 int smu8_enable_disable_uvd_dpm (struct pp_hwmgr*,int) ;
 int smu8_get_uvd_level (struct pp_hwmgr*,int ,int ) ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int ) ;

int smu8_dpm_update_uvd_dpm(struct pp_hwmgr *hwmgr, bool bgate)
{
 struct smu8_hwmgr *data = hwmgr->backend;
 struct phm_uvd_clock_voltage_dependency_table *ptable =
  hwmgr->dyn_state.uvd_clock_voltage_dependency_table;

 if (!bgate) {

  if (PP_CAP(PHM_PlatformCaps_StablePState) ||
      hwmgr->en_umd_pstate) {
   data->uvd_dpm.hard_min_clk =
       ptable->entries[ptable->count - 1].vclk;

   smum_send_msg_to_smc_with_parameter(hwmgr,
    PPSMC_MSG_SetUvdHardMin,
    smu8_get_uvd_level(hwmgr,
     data->uvd_dpm.hard_min_clk,
     PPSMC_MSG_SetUvdHardMin));

   smu8_enable_disable_uvd_dpm(hwmgr, 1);
  } else {
   smu8_enable_disable_uvd_dpm(hwmgr, 1);
  }
 } else {
  smu8_enable_disable_uvd_dpm(hwmgr, 0);
 }

 return 0;
}

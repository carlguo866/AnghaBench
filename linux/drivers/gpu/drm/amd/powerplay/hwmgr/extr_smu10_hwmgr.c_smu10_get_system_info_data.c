
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int htc_hyst_lmt; int htc_tmp_lmt; } ;
struct smu10_hwmgr {int thermal_auto_throttling_treshold; TYPE_1__ sys_info; } ;
struct TYPE_4__ {int max_clock_voltage_on_ac; } ;
struct pp_hwmgr {TYPE_2__ dyn_state; scalar_t__ backend; } ;


 int smu10_construct_max_power_limits_table (struct pp_hwmgr*,int *) ;
 int smu10_init_dynamic_state_adjustment_rule_settings (struct pp_hwmgr*) ;

__attribute__((used)) static int smu10_get_system_info_data(struct pp_hwmgr *hwmgr)
{
 struct smu10_hwmgr *smu10_data = (struct smu10_hwmgr *)hwmgr->backend;

 smu10_data->sys_info.htc_hyst_lmt = 5;
 smu10_data->sys_info.htc_tmp_lmt = 203;

 if (smu10_data->thermal_auto_throttling_treshold == 0)
   smu10_data->thermal_auto_throttling_treshold = 203;

 smu10_construct_max_power_limits_table (hwmgr,
        &hwmgr->dyn_state.max_clock_voltage_on_ac);

 smu10_init_dynamic_state_adjustment_rule_settings(hwmgr);

 return 0;
}

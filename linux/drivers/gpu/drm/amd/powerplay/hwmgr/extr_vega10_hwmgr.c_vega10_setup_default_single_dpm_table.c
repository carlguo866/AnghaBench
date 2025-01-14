
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vega10_single_dpm_table {int count; TYPE_2__* dpm_levels; } ;
struct pp_hwmgr {int dummy; } ;
struct phm_ppt_v1_clock_voltage_dependency_table {int count; TYPE_1__* entries; } ;
struct TYPE_4__ {scalar_t__ value; int enabled; } ;
struct TYPE_3__ {scalar_t__ clk; } ;



__attribute__((used)) static void vega10_setup_default_single_dpm_table(struct pp_hwmgr *hwmgr,
  struct vega10_single_dpm_table *dpm_table,
  struct phm_ppt_v1_clock_voltage_dependency_table *dep_table)
{
 int i;

 dpm_table->count = 0;

 for (i = 0; i < dep_table->count; i++) {
  if (i == 0 || dpm_table->dpm_levels[dpm_table->count - 1].value <=
    dep_table->entries[i].clk) {
   dpm_table->dpm_levels[dpm_table->count].value =
     dep_table->entries[i].clk;
   dpm_table->dpm_levels[dpm_table->count].enabled = 1;
   dpm_table->count++;
  }
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_12__ {size_t GraphicsBootLevel; size_t MemoryBootLevel; } ;
struct vegam_smumgr {TYPE_6__ smc_state_table; } ;
struct TYPE_11__ {scalar_t__ sclk_bootup_value; scalar_t__ mclk_bootup_value; } ;
struct smu7_hwmgr {TYPE_5__ vbios_boot_state; } ;
struct pp_hwmgr {scalar_t__ pptable; scalar_t__ smu_backend; scalar_t__ backend; } ;
struct phm_ppt_v1_information {TYPE_4__* vdd_dep_on_mclk; TYPE_2__* vdd_dep_on_sclk; } ;
struct TYPE_10__ {TYPE_3__* entries; scalar_t__ count; } ;
struct TYPE_9__ {scalar_t__ clk; } ;
struct TYPE_8__ {TYPE_1__* entries; scalar_t__ count; } ;
struct TYPE_7__ {scalar_t__ clk; } ;



__attribute__((used)) static int vegam_populate_smc_initial_state(struct pp_hwmgr *hwmgr)
{
 struct smu7_hwmgr *hw_data = (struct smu7_hwmgr *)(hwmgr->backend);
 struct vegam_smumgr *smu_data = (struct vegam_smumgr *)(hwmgr->smu_backend);
 struct phm_ppt_v1_information *table_info =
   (struct phm_ppt_v1_information *)(hwmgr->pptable);
 uint8_t count, level;

 count = (uint8_t)(table_info->vdd_dep_on_sclk->count);

 for (level = 0; level < count; level++) {
  if (table_info->vdd_dep_on_sclk->entries[level].clk >=
    hw_data->vbios_boot_state.sclk_bootup_value) {
   smu_data->smc_state_table.GraphicsBootLevel = level;
   break;
  }
 }

 count = (uint8_t)(table_info->vdd_dep_on_mclk->count);
 for (level = 0; level < count; level++) {
  if (table_info->vdd_dep_on_mclk->entries[level].clk >=
    hw_data->vbios_boot_state.mclk_bootup_value) {
   smu_data->smc_state_table.MemoryBootLevel = level;
   break;
  }
 }

 return 0;
}

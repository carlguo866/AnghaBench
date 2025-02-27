
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct radeon_device {int dummy; } ;
struct TYPE_11__ {size_t count; TYPE_3__* dpm_levels; } ;
struct TYPE_9__ {size_t count; TYPE_1__* dpm_levels; } ;
struct TYPE_12__ {TYPE_4__ mclk_table; TYPE_2__ sclk_table; } ;
struct ci_power_info {int sram_end; int arb_table_start; TYPE_5__ dpm_table; } ;
struct TYPE_13__ {int ** entries; } ;
struct TYPE_10__ {int value; } ;
struct TYPE_8__ {int value; } ;
typedef TYPE_6__ SMU7_Discrete_MCArbDramTimingTable ;


 int ci_copy_bytes_to_smc (struct radeon_device*,int ,int *,int,int ) ;
 struct ci_power_info* ci_get_pi (struct radeon_device*) ;
 int ci_populate_memory_timing_parameters (struct radeon_device*,int ,int ,int *) ;
 int memset (TYPE_6__*,int ,int) ;

__attribute__((used)) static int ci_do_program_memory_timing_parameters(struct radeon_device *rdev)
{
 struct ci_power_info *pi = ci_get_pi(rdev);
 SMU7_Discrete_MCArbDramTimingTable arb_regs;
 u32 i, j;
 int ret = 0;

 memset(&arb_regs, 0, sizeof(SMU7_Discrete_MCArbDramTimingTable));

 for (i = 0; i < pi->dpm_table.sclk_table.count; i++) {
  for (j = 0; j < pi->dpm_table.mclk_table.count; j++) {
   ret = ci_populate_memory_timing_parameters(rdev,
           pi->dpm_table.sclk_table.dpm_levels[i].value,
           pi->dpm_table.mclk_table.dpm_levels[j].value,
           &arb_regs.entries[i][j]);
   if (ret)
    break;
  }
 }

 if (ret == 0)
  ret = ci_copy_bytes_to_smc(rdev,
        pi->arb_table_start,
        (u8 *)&arb_regs,
        sizeof(SMU7_Discrete_MCArbDramTimingTable),
        pi->sram_end);

 return ret;
}

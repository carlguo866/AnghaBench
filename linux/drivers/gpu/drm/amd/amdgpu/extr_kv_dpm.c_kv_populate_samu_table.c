
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* u8 ;
typedef size_t u32 ;
struct kv_power_info {scalar_t__ high_voltage_t; int samu_interval; int sram_end; TYPE_5__* samu_level; scalar_t__ dpm_table_start; scalar_t__ samu_level_count; } ;
struct atom_clock_dividers {int post_div; } ;
struct amdgpu_clock_voltage_dependency_table {scalar_t__ count; TYPE_4__* entries; } ;
struct TYPE_6__ {struct amdgpu_clock_voltage_dependency_table samu_clock_voltage_dependency_table; } ;
struct TYPE_7__ {TYPE_1__ dyn_state; } ;
struct TYPE_8__ {TYPE_2__ dpm; } ;
struct amdgpu_device {TYPE_3__ pm; } ;
struct TYPE_10__ {void* Divider; void* ClkBypassCntl; int MinVoltage; int Frequency; } ;
struct TYPE_9__ {scalar_t__ v; int clk; } ;
typedef int SMU7_Fusion_ExtClkLevel ;


 int COMPUTE_ENGINE_PLL_PARAM ;
 int SAMUInterval ;
 int SMU7_Fusion_DpmTable ;
 int SMU7_MAX_LEVELS_SAMU ;
 int SamuLevel ;
 int SamuLevelCount ;
 int amdgpu_atombios_get_clock_dividers (struct amdgpu_device*,int ,int ,int,struct atom_clock_dividers*) ;
 int amdgpu_kv_copy_bytes_to_smc (struct amdgpu_device*,scalar_t__,void**,int,int ) ;
 int cpu_to_be16 (scalar_t__) ;
 int cpu_to_be32 (int ) ;
 int kv_get_clk_bypass (struct amdgpu_device*,int ) ;
 struct kv_power_info* kv_get_pi (struct amdgpu_device*) ;
 scalar_t__ offsetof (int ,int ) ;

__attribute__((used)) static int kv_populate_samu_table(struct amdgpu_device *adev)
{
 struct kv_power_info *pi = kv_get_pi(adev);
 struct amdgpu_clock_voltage_dependency_table *table =
  &adev->pm.dpm.dyn_state.samu_clock_voltage_dependency_table;
 struct atom_clock_dividers dividers;
 int ret;
 u32 i;

 if (table == ((void*)0) || table->count == 0)
  return 0;

 pi->samu_level_count = 0;
 for (i = 0; i < table->count; i++) {
  if (pi->high_voltage_t &&
      pi->high_voltage_t < table->entries[i].v)
   break;

  pi->samu_level[i].Frequency = cpu_to_be32(table->entries[i].clk);
  pi->samu_level[i].MinVoltage = cpu_to_be16(table->entries[i].v);

  pi->samu_level[i].ClkBypassCntl =
   (u8)kv_get_clk_bypass(adev, table->entries[i].clk);

  ret = amdgpu_atombios_get_clock_dividers(adev, COMPUTE_ENGINE_PLL_PARAM,
        table->entries[i].clk, 0, &dividers);
  if (ret)
   return ret;
  pi->samu_level[i].Divider = (u8)dividers.post_div;

  pi->samu_level_count++;
 }

 ret = amdgpu_kv_copy_bytes_to_smc(adev,
       pi->dpm_table_start +
       offsetof(SMU7_Fusion_DpmTable, SamuLevelCount),
       (u8 *)&pi->samu_level_count,
       sizeof(u8),
       pi->sram_end);
 if (ret)
  return ret;

 pi->samu_interval = 1;

 ret = amdgpu_kv_copy_bytes_to_smc(adev,
       pi->dpm_table_start +
       offsetof(SMU7_Fusion_DpmTable, SAMUInterval),
       (u8 *)&pi->samu_interval,
       sizeof(u8),
       pi->sram_end);
 if (ret)
  return ret;

 ret = amdgpu_kv_copy_bytes_to_smc(adev,
       pi->dpm_table_start +
       offsetof(SMU7_Fusion_DpmTable, SamuLevel),
       (u8 *)&pi->samu_level,
       sizeof(SMU7_Fusion_ExtClkLevel) * SMU7_MAX_LEVELS_SAMU,
       pi->sram_end);
 if (ret)
  return ret;

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct si_ps {int performance_level_count; } ;
struct TYPE_2__ {int driverState; } ;
struct si_power_info {int state_table_start; int sram_end; TYPE_1__ smc_statetable; } ;
struct amdgpu_ps {int dummy; } ;
struct amdgpu_device {int dummy; } ;
typedef int SISLANDS_SMC_SWSTATE ;
typedef int SISLANDS_SMC_HW_PERFORMANCE_LEVEL ;


 int SISLANDS_SMC_STATETABLE ;
 int amdgpu_si_copy_bytes_to_smc (struct amdgpu_device*,int,int *,int,int ) ;
 int driverState ;
 int memset (int *,int ,int) ;
 int offsetof (int ,int ) ;
 int si_convert_power_state_to_smc (struct amdgpu_device*,struct amdgpu_ps*,int *) ;
 struct si_power_info* si_get_pi (struct amdgpu_device*) ;
 struct si_ps* si_get_ps (struct amdgpu_ps*) ;

__attribute__((used)) static int si_upload_sw_state(struct amdgpu_device *adev,
         struct amdgpu_ps *amdgpu_new_state)
{
 struct si_power_info *si_pi = si_get_pi(adev);
 struct si_ps *new_state = si_get_ps(amdgpu_new_state);
 int ret;
 u32 address = si_pi->state_table_start +
  offsetof(SISLANDS_SMC_STATETABLE, driverState);
 u32 state_size = sizeof(SISLANDS_SMC_SWSTATE) +
  ((new_state->performance_level_count - 1) *
   sizeof(SISLANDS_SMC_HW_PERFORMANCE_LEVEL));
 SISLANDS_SMC_SWSTATE *smc_state = &si_pi->smc_statetable.driverState;

 memset(smc_state, 0, state_size);

 ret = si_convert_power_state_to_smc(adev, amdgpu_new_state, smc_state);
 if (ret)
  return ret;

 return amdgpu_si_copy_bytes_to_smc(adev, address, (u8 *)smc_state,
        state_size, si_pi->sram_end);
}

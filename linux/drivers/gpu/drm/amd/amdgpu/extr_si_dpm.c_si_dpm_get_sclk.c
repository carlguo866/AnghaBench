
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct si_ps {int performance_level_count; TYPE_1__* performance_levels; } ;
struct evergreen_power_info {int requested_rps; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {int sclk; } ;


 struct evergreen_power_info* evergreen_get_pi (struct amdgpu_device*) ;
 struct si_ps* si_get_ps (int *) ;

__attribute__((used)) static u32 si_dpm_get_sclk(void *handle, bool low)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 struct evergreen_power_info *eg_pi = evergreen_get_pi(adev);
 struct si_ps *requested_state = si_get_ps(&eg_pi->requested_rps);

 if (low)
  return requested_state->performance_levels[0].sclk;
 else
  return requested_state->performance_levels[requested_state->performance_level_count - 1].sclk;
}

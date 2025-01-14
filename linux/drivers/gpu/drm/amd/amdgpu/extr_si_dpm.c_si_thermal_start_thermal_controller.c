
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ucode_fan_control; } ;
struct TYPE_5__ {TYPE_1__ fan; } ;
struct TYPE_6__ {TYPE_2__ dpm; } ;
struct amdgpu_device {TYPE_3__ pm; } ;


 int R600_TEMP_RANGE_MAX ;
 int R600_TEMP_RANGE_MIN ;
 int si_halt_smc (struct amdgpu_device*) ;
 int si_resume_smc (struct amdgpu_device*) ;
 int si_thermal_enable_alert (struct amdgpu_device*,int) ;
 int si_thermal_initialize (struct amdgpu_device*) ;
 int si_thermal_set_temperature_range (struct amdgpu_device*,int ,int ) ;
 int si_thermal_setup_fan_table (struct amdgpu_device*) ;
 int si_thermal_start_smc_fan_control (struct amdgpu_device*) ;

__attribute__((used)) static int si_thermal_start_thermal_controller(struct amdgpu_device *adev)
{
 int ret;

 si_thermal_initialize(adev);
 ret = si_thermal_set_temperature_range(adev, R600_TEMP_RANGE_MIN, R600_TEMP_RANGE_MAX);
 if (ret)
  return ret;
 ret = si_thermal_enable_alert(adev, 1);
 if (ret)
  return ret;
 if (adev->pm.dpm.fan.ucode_fan_control) {
  ret = si_halt_smc(adev);
  if (ret)
   return ret;
  ret = si_thermal_setup_fan_table(adev);
  if (ret)
   return ret;
  ret = si_resume_smc(adev);
  if (ret)
   return ret;
  si_thermal_start_smc_fan_control(adev);
 }

 return 0;
}

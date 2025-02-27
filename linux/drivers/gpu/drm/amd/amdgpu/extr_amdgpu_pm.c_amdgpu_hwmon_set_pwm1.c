
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* pp_funcs; } ;
struct amdgpu_device {int flags; TYPE_3__ powerplay; int smu; TYPE_1__* ddev; } ;
typedef int ssize_t ;
struct TYPE_5__ {scalar_t__ set_fan_speed_percent; } ;
struct TYPE_4__ {scalar_t__ switch_power_state; } ;


 scalar_t__ AMD_FAN_CTRL_MANUAL ;
 int AMD_IS_PX ;
 scalar_t__ DRM_SWITCH_POWER_ON ;
 int EINVAL ;
 scalar_t__ amdgpu_dpm_get_fan_control_mode (struct amdgpu_device*) ;
 int amdgpu_dpm_set_fan_speed_percent (struct amdgpu_device*,scalar_t__) ;
 struct amdgpu_device* dev_get_drvdata (struct device*) ;
 scalar_t__ is_support_sw_smu (struct amdgpu_device*) ;
 int kstrtou32 (char const*,int,scalar_t__*) ;
 int pr_info (char*) ;
 scalar_t__ smu_get_fan_control_mode (int *) ;
 int smu_set_fan_speed_percent (int *,scalar_t__) ;

__attribute__((used)) static ssize_t amdgpu_hwmon_set_pwm1(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct amdgpu_device *adev = dev_get_drvdata(dev);
 int err;
 u32 value;
 u32 pwm_mode;


 if ((adev->flags & AMD_IS_PX) &&
      (adev->ddev->switch_power_state != DRM_SWITCH_POWER_ON))
  return -EINVAL;
 if (is_support_sw_smu(adev))
  pwm_mode = smu_get_fan_control_mode(&adev->smu);
 else
  pwm_mode = amdgpu_dpm_get_fan_control_mode(adev);
 if (pwm_mode != AMD_FAN_CTRL_MANUAL) {
  pr_info("manual fan speed control should be enabled first\n");
  return -EINVAL;
 }

 err = kstrtou32(buf, 10, &value);
 if (err)
  return err;

 value = (value * 100) / 255;

 if (is_support_sw_smu(adev)) {
  err = smu_set_fan_speed_percent(&adev->smu, value);
  if (err)
   return err;
 } else if (adev->powerplay.pp_funcs->set_fan_speed_percent) {
  err = amdgpu_dpm_set_fan_speed_percent(adev, value);
  if (err)
   return err;
 }

 return count;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct ci_power_info {scalar_t__ thermal_sclk_dpm_enabled; } ;
typedef scalar_t__ PPSMC_Result ;


 int EINVAL ;
 int PPSMC_MSG_DISABLE_THERMAL_DPM ;
 int PPSMC_MSG_ENABLE_THERMAL_DPM ;
 scalar_t__ PPSMC_Result_OK ;
 struct ci_power_info* ci_get_pi (struct radeon_device*) ;
 scalar_t__ ci_send_msg_to_smc (struct radeon_device*,int ) ;

__attribute__((used)) static int ci_enable_thermal_based_sclk_dpm(struct radeon_device *rdev,
         bool enable)
{
 struct ci_power_info *pi = ci_get_pi(rdev);
 PPSMC_Result smc_result = PPSMC_Result_OK;

 if (pi->thermal_sclk_dpm_enabled) {
  if (enable)
   smc_result = ci_send_msg_to_smc(rdev, PPSMC_MSG_ENABLE_THERMAL_DPM);
  else
   smc_result = ci_send_msg_to_smc(rdev, PPSMC_MSG_DISABLE_THERMAL_DPM);
 }

 if (smc_result == PPSMC_Result_OK)
  return 0;
 else
  return -EINVAL;
}

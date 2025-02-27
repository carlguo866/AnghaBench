
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_ps {int dummy; } ;
struct TYPE_3__ {struct radeon_ps* boot_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct ci_power_info {scalar_t__ thermal_protection; } ;


 int RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL ;
 int ci_clear_vc (struct radeon_device*) ;
 int ci_dpm_powergate_uvd (struct radeon_device*,int) ;
 int ci_dpm_stop_smc (struct radeon_device*) ;
 int ci_enable_auto_throttle_source (struct radeon_device*,int ,int) ;
 int ci_enable_didt (struct radeon_device*,int) ;
 int ci_enable_ds_master_switch (struct radeon_device*,int) ;
 int ci_enable_power_containment (struct radeon_device*,int) ;
 int ci_enable_smc_cac (struct radeon_device*,int) ;
 int ci_enable_spread_spectrum (struct radeon_device*,int) ;
 int ci_enable_thermal_based_sclk_dpm (struct radeon_device*,int) ;
 int ci_enable_thermal_protection (struct radeon_device*,int) ;
 int ci_enable_ulv (struct radeon_device*,int) ;
 int ci_force_switch_to_arb_f0 (struct radeon_device*) ;
 struct ci_power_info* ci_get_pi (struct radeon_device*) ;
 int ci_is_smc_running (struct radeon_device*) ;
 int ci_reset_to_default (struct radeon_device*) ;
 int ci_stop_dpm (struct radeon_device*) ;
 int ci_thermal_stop_thermal_controller (struct radeon_device*) ;
 int ci_update_current_ps (struct radeon_device*,struct radeon_ps*) ;

void ci_dpm_disable(struct radeon_device *rdev)
{
 struct ci_power_info *pi = ci_get_pi(rdev);
 struct radeon_ps *boot_ps = rdev->pm.dpm.boot_ps;

 ci_dpm_powergate_uvd(rdev, 0);

 if (!ci_is_smc_running(rdev))
  return;

 ci_thermal_stop_thermal_controller(rdev);

 if (pi->thermal_protection)
  ci_enable_thermal_protection(rdev, 0);
 ci_enable_power_containment(rdev, 0);
 ci_enable_smc_cac(rdev, 0);
 ci_enable_didt(rdev, 0);
 ci_enable_spread_spectrum(rdev, 0);
 ci_enable_auto_throttle_source(rdev, RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL, 0);
 ci_stop_dpm(rdev);
 ci_enable_ds_master_switch(rdev, 0);
 ci_enable_ulv(rdev, 0);
 ci_clear_vc(rdev);
 ci_reset_to_default(rdev);
 ci_dpm_stop_smc(rdev);
 ci_force_switch_to_arb_f0(rdev);
 ci_enable_thermal_based_sclk_dpm(rdev, 0);

 ci_update_current_ps(rdev, boot_ps);
}

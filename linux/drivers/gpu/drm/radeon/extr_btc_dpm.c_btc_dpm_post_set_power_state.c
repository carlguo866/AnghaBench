
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct evergreen_power_info {struct radeon_ps requested_rps; } ;


 int btc_update_current_ps (struct radeon_device*,struct radeon_ps*) ;
 struct evergreen_power_info* evergreen_get_pi (struct radeon_device*) ;

void btc_dpm_post_set_power_state(struct radeon_device *rdev)
{
 struct evergreen_power_info *eg_pi = evergreen_get_pi(rdev);
 struct radeon_ps *new_ps = &eg_pi->requested_rps;

 btc_update_current_ps(rdev, new_ps);
}

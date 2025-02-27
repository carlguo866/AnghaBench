
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sclk; } ;
struct rv6xx_ps {TYPE_1__ low; } ;
struct TYPE_4__ {int medium_sclk_index; } ;
struct rv6xx_power_info {TYPE_2__ hw; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;


 int rv6xx_generate_steps (struct radeon_device*,int ,int ,int ,int *) ;
 struct rv6xx_power_info* rv6xx_get_pi (struct radeon_device*) ;
 struct rv6xx_ps* rv6xx_get_ps (struct radeon_ps*) ;

__attribute__((used)) static void rv6xx_generate_transition_stepping(struct radeon_device *rdev,
            struct radeon_ps *new_ps,
            struct radeon_ps *old_ps)
{
 struct rv6xx_ps *new_state = rv6xx_get_ps(new_ps);
 struct rv6xx_ps *old_state = rv6xx_get_ps(old_ps);
 struct rv6xx_power_info *pi = rv6xx_get_pi(rdev);

 rv6xx_generate_steps(rdev,
        old_state->low.sclk,
        new_state->low.sclk,
        0, &pi->hw.medium_sclk_index);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sumo_power_info {scalar_t__ enable_sclk_ds; } ;
struct radeon_device {int dummy; } ;


 int CG_SCLK_DPM_CTRL_6 ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 struct sumo_power_info* sumo_get_pi (struct radeon_device*) ;

__attribute__((used)) static void sumo_set_ds_dividers(struct radeon_device *rdev,
     u32 index, u32 divider)
{
 struct sumo_power_info *pi = sumo_get_pi(rdev);

 if (pi->enable_sclk_ds) {
  u32 dpm_ctrl = RREG32(CG_SCLK_DPM_CTRL_6);

  dpm_ctrl &= ~(0x7 << (index * 3));
  dpm_ctrl |= (divider << (index * 3));
  WREG32(CG_SCLK_DPM_CTRL_6, dpm_ctrl);
 }
}

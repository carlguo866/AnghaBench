
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_12__ {scalar_t__ requested_clock_mode_index; scalar_t__ current_clock_mode_index; scalar_t__ requested_power_state_index; scalar_t__ current_power_state_index; scalar_t__ default_sclk; scalar_t__ pm_method; scalar_t__ profile_index; scalar_t__ default_mclk; scalar_t__ current_sclk; scalar_t__ current_mclk; TYPE_3__* power_state; TYPE_1__* profiles; scalar_t__ active_crtc_count; } ;
struct radeon_device {scalar_t__ family; TYPE_6__ pm; TYPE_5__* asic; } ;
struct TYPE_10__ {scalar_t__ set_memory_clock; } ;
struct TYPE_11__ {TYPE_4__ pm; } ;
struct TYPE_9__ {TYPE_2__* clock_info; } ;
struct TYPE_8__ {scalar_t__ sclk; scalar_t__ mclk; } ;
struct TYPE_7__ {size_t dpms_on_cm_idx; } ;


 scalar_t__ CHIP_BARTS ;
 int DRM_DEBUG_DRIVER (char*,...) ;
 scalar_t__ PM_METHOD_DYNPM ;
 scalar_t__ PM_METHOD_PROFILE ;
 size_t PM_PROFILE_HIGH_MH_IDX ;
 scalar_t__ PM_PROFILE_LOW_MH_IDX ;
 scalar_t__ PM_PROFILE_MID_MH_IDX ;
 scalar_t__ radeon_gui_idle (struct radeon_device*) ;
 int radeon_pm_debug_check_in_vbl (struct radeon_device*,int) ;
 int radeon_pm_finish (struct radeon_device*) ;
 int radeon_pm_in_vbl (struct radeon_device*) ;
 int radeon_pm_misc (struct radeon_device*) ;
 int radeon_pm_prepare (struct radeon_device*) ;
 int radeon_set_engine_clock (struct radeon_device*,scalar_t__) ;
 int radeon_set_memory_clock (struct radeon_device*,scalar_t__) ;
 int radeon_sync_with_vblank (struct radeon_device*) ;

__attribute__((used)) static void radeon_set_power_state(struct radeon_device *rdev)
{
 u32 sclk, mclk;
 bool misc_after = 0;

 if ((rdev->pm.requested_clock_mode_index == rdev->pm.current_clock_mode_index) &&
     (rdev->pm.requested_power_state_index == rdev->pm.current_power_state_index))
  return;

 if (radeon_gui_idle(rdev)) {
  sclk = rdev->pm.power_state[rdev->pm.requested_power_state_index].
   clock_info[rdev->pm.requested_clock_mode_index].sclk;
  if (sclk > rdev->pm.default_sclk)
   sclk = rdev->pm.default_sclk;





  if ((rdev->pm.pm_method == PM_METHOD_PROFILE) &&
      (rdev->family >= CHIP_BARTS) &&
      rdev->pm.active_crtc_count &&
      ((rdev->pm.profile_index == PM_PROFILE_MID_MH_IDX) ||
       (rdev->pm.profile_index == PM_PROFILE_LOW_MH_IDX)))
   mclk = rdev->pm.power_state[rdev->pm.requested_power_state_index].
    clock_info[rdev->pm.profiles[PM_PROFILE_HIGH_MH_IDX].dpms_on_cm_idx].mclk;
  else
   mclk = rdev->pm.power_state[rdev->pm.requested_power_state_index].
    clock_info[rdev->pm.requested_clock_mode_index].mclk;

  if (mclk > rdev->pm.default_mclk)
   mclk = rdev->pm.default_mclk;


  if (sclk < rdev->pm.current_sclk)
   misc_after = 1;

  radeon_sync_with_vblank(rdev);

  if (rdev->pm.pm_method == PM_METHOD_DYNPM) {
   if (!radeon_pm_in_vbl(rdev))
    return;
  }

  radeon_pm_prepare(rdev);

  if (!misc_after)

   radeon_pm_misc(rdev);


  if (sclk != rdev->pm.current_sclk) {
   radeon_pm_debug_check_in_vbl(rdev, 0);
   radeon_set_engine_clock(rdev, sclk);
   radeon_pm_debug_check_in_vbl(rdev, 1);
   rdev->pm.current_sclk = sclk;
   DRM_DEBUG_DRIVER("Setting: e: %d\n", sclk);
  }


  if (rdev->asic->pm.set_memory_clock && (mclk != rdev->pm.current_mclk)) {
   radeon_pm_debug_check_in_vbl(rdev, 0);
   radeon_set_memory_clock(rdev, mclk);
   radeon_pm_debug_check_in_vbl(rdev, 1);
   rdev->pm.current_mclk = mclk;
   DRM_DEBUG_DRIVER("Setting: m: %d\n", mclk);
  }

  if (misc_after)

   radeon_pm_misc(rdev);

  radeon_pm_finish(rdev);

  rdev->pm.current_power_state_index = rdev->pm.requested_power_state_index;
  rdev->pm.current_clock_mode_index = rdev->pm.requested_clock_mode_index;
 } else
  DRM_DEBUG_DRIVER("pm: GUI not idle!!!\n");
}

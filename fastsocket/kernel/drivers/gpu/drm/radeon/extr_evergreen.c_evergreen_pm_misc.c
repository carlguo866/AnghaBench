
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct radeon_voltage {scalar_t__ type; int voltage; int vddci; } ;
struct radeon_power_state {TYPE_1__* clock_info; } ;
struct TYPE_6__ {int requested_power_state_index; int requested_clock_mode_index; int current_vddc; scalar_t__ pm_method; scalar_t__ profile_index; int current_vddci; TYPE_2__* profiles; struct radeon_power_state* power_state; scalar_t__ active_crtc_count; } ;
struct radeon_device {scalar_t__ family; TYPE_3__ pm; } ;
struct TYPE_5__ {size_t dpms_on_cm_idx; } ;
struct TYPE_4__ {struct radeon_voltage voltage; } ;


 scalar_t__ CHIP_BARTS ;
 int DRM_DEBUG (char*,int) ;
 scalar_t__ PM_METHOD_PROFILE ;
 size_t PM_PROFILE_HIGH_MH_IDX ;
 scalar_t__ PM_PROFILE_LOW_MH_IDX ;
 scalar_t__ PM_PROFILE_MID_MH_IDX ;
 int SET_VOLTAGE_TYPE_ASIC_VDDC ;
 int SET_VOLTAGE_TYPE_ASIC_VDDCI ;
 scalar_t__ VOLTAGE_SW ;
 int radeon_atom_set_voltage (struct radeon_device*,int,int ) ;

void evergreen_pm_misc(struct radeon_device *rdev)
{
 int req_ps_idx = rdev->pm.requested_power_state_index;
 int req_cm_idx = rdev->pm.requested_clock_mode_index;
 struct radeon_power_state *ps = &rdev->pm.power_state[req_ps_idx];
 struct radeon_voltage *voltage = &ps->clock_info[req_cm_idx].voltage;

 if (voltage->type == VOLTAGE_SW) {

  if (voltage->voltage == 0xff01)
   return;
  if (voltage->voltage && (voltage->voltage != rdev->pm.current_vddc)) {
   radeon_atom_set_voltage(rdev, voltage->voltage, SET_VOLTAGE_TYPE_ASIC_VDDC);
   rdev->pm.current_vddc = voltage->voltage;
   DRM_DEBUG("Setting: vddc: %d\n", voltage->voltage);
  }





  if ((rdev->pm.pm_method == PM_METHOD_PROFILE) &&
      (rdev->family >= CHIP_BARTS) &&
      rdev->pm.active_crtc_count &&
      ((rdev->pm.profile_index == PM_PROFILE_MID_MH_IDX) ||
       (rdev->pm.profile_index == PM_PROFILE_LOW_MH_IDX)))
   voltage = &rdev->pm.power_state[req_ps_idx].
    clock_info[rdev->pm.profiles[PM_PROFILE_HIGH_MH_IDX].dpms_on_cm_idx].voltage;


  if (voltage->vddci == 0xff01)
   return;
  if (voltage->vddci && (voltage->vddci != rdev->pm.current_vddci)) {
   radeon_atom_set_voltage(rdev, voltage->vddci, SET_VOLTAGE_TYPE_ASIC_VDDCI);
   rdev->pm.current_vddci = voltage->vddci;
   DRM_DEBUG("Setting: vddci: %d\n", voltage->vddci);
  }
 }
}

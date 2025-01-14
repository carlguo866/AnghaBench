
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ count; } ;
struct si_power_info {int vddc_phase_shed_control; TYPE_4__ vddc_phase_shed_table; TYPE_4__ mvdd_voltage_table; scalar_t__ vddci_control_svi2; scalar_t__ voltage_control_svi2; } ;
struct rv7xx_power_info {int mvdd_control; scalar_t__ voltage_control; } ;
struct evergreen_power_info {TYPE_4__ vddci_voltage_table; scalar_t__ vddci_control; TYPE_4__ vddc_voltage_table; } ;
struct TYPE_7__ {int vddci_dependency_on_mclk; int vddc_dependency_on_mclk; } ;
struct TYPE_8__ {TYPE_1__ dyn_state; } ;
struct TYPE_9__ {TYPE_2__ dpm; } ;
struct amdgpu_device {TYPE_3__ pm; } ;


 int EINVAL ;
 scalar_t__ SISLANDS_MAX_NO_VREG_STEPS ;
 int VOLTAGE_OBJ_GPIO_LUT ;
 int VOLTAGE_OBJ_PHASE_LUT ;
 int VOLTAGE_TYPE_MVDDC ;
 int VOLTAGE_TYPE_VDDC ;
 int VOLTAGE_TYPE_VDDCI ;
 int amdgpu_atombios_get_voltage_table (struct amdgpu_device*,int ,int ,TYPE_4__*) ;
 struct evergreen_power_info* evergreen_get_pi (struct amdgpu_device*) ;
 struct rv7xx_power_info* rv770_get_pi (struct amdgpu_device*) ;
 struct si_power_info* si_get_pi (struct amdgpu_device*) ;
 int si_get_svi2_voltage_table (struct amdgpu_device*,int *,TYPE_4__*) ;
 int si_trim_voltage_table_to_fit_state_table (struct amdgpu_device*,scalar_t__,TYPE_4__*) ;

__attribute__((used)) static int si_construct_voltage_tables(struct amdgpu_device *adev)
{
 struct rv7xx_power_info *pi = rv770_get_pi(adev);
 struct evergreen_power_info *eg_pi = evergreen_get_pi(adev);
 struct si_power_info *si_pi = si_get_pi(adev);
 int ret;

 if (pi->voltage_control) {
  ret = amdgpu_atombios_get_voltage_table(adev, VOLTAGE_TYPE_VDDC,
          VOLTAGE_OBJ_GPIO_LUT, &eg_pi->vddc_voltage_table);
  if (ret)
   return ret;

  if (eg_pi->vddc_voltage_table.count > SISLANDS_MAX_NO_VREG_STEPS)
   si_trim_voltage_table_to_fit_state_table(adev,
         SISLANDS_MAX_NO_VREG_STEPS,
         &eg_pi->vddc_voltage_table);
 } else if (si_pi->voltage_control_svi2) {
  ret = si_get_svi2_voltage_table(adev,
      &adev->pm.dpm.dyn_state.vddc_dependency_on_mclk,
      &eg_pi->vddc_voltage_table);
  if (ret)
   return ret;
 } else {
  return -EINVAL;
 }

 if (eg_pi->vddci_control) {
  ret = amdgpu_atombios_get_voltage_table(adev, VOLTAGE_TYPE_VDDCI,
          VOLTAGE_OBJ_GPIO_LUT, &eg_pi->vddci_voltage_table);
  if (ret)
   return ret;

  if (eg_pi->vddci_voltage_table.count > SISLANDS_MAX_NO_VREG_STEPS)
   si_trim_voltage_table_to_fit_state_table(adev,
         SISLANDS_MAX_NO_VREG_STEPS,
         &eg_pi->vddci_voltage_table);
 }
 if (si_pi->vddci_control_svi2) {
  ret = si_get_svi2_voltage_table(adev,
      &adev->pm.dpm.dyn_state.vddci_dependency_on_mclk,
      &eg_pi->vddci_voltage_table);
  if (ret)
   return ret;
 }

 if (pi->mvdd_control) {
  ret = amdgpu_atombios_get_voltage_table(adev, VOLTAGE_TYPE_MVDDC,
          VOLTAGE_OBJ_GPIO_LUT, &si_pi->mvdd_voltage_table);

  if (ret) {
   pi->mvdd_control = 0;
   return ret;
  }

  if (si_pi->mvdd_voltage_table.count == 0) {
   pi->mvdd_control = 0;
   return -EINVAL;
  }

  if (si_pi->mvdd_voltage_table.count > SISLANDS_MAX_NO_VREG_STEPS)
   si_trim_voltage_table_to_fit_state_table(adev,
         SISLANDS_MAX_NO_VREG_STEPS,
         &si_pi->mvdd_voltage_table);
 }

 if (si_pi->vddc_phase_shed_control) {
  ret = amdgpu_atombios_get_voltage_table(adev, VOLTAGE_TYPE_VDDC,
          VOLTAGE_OBJ_PHASE_LUT, &si_pi->vddc_phase_shed_table);
  if (ret)
   si_pi->vddc_phase_shed_control = 0;

  if ((si_pi->vddc_phase_shed_table.count == 0) ||
      (si_pi->vddc_phase_shed_table.count > SISLANDS_MAX_NO_VREG_STEPS))
   si_pi->vddc_phase_shed_control = 0;
 }

 return 0;
}

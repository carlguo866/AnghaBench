
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef void* u16 ;
struct TYPE_10__ {int default_power_state_index; TYPE_4__* power_state; void* default_vddci; void* default_vddc; int default_mclk; int default_sclk; } ;
struct TYPE_6__ {int default_sclk; int default_mclk; } ;
struct radeon_device {scalar_t__ family; int flags; TYPE_5__ pm; TYPE_1__ clock; } ;
struct _ATOM_PPLIB_NONCLOCK_INFO {int usClassification; int ulCapsAndSettings; } ;
struct TYPE_9__ {int misc; int misc2; int pcie_lanes; TYPE_3__* clock_info; TYPE_3__* default_clock_mode; void* type; int flags; } ;
struct TYPE_7__ {void* vddci; void* voltage; } ;
struct TYPE_8__ {TYPE_2__ voltage; int sclk; int mclk; } ;


 scalar_t__ ASIC_IS_DCE4 (struct radeon_device*) ;
 int ATOM_PPLIB_CLASSIFICATION_3DPERFORMANCE ;
 int ATOM_PPLIB_CLASSIFICATION_BOOT ;


 int ATOM_PPLIB_CLASSIFICATION_UI_MASK ;


 int ATOM_PPLIB_PCIE_LINK_WIDTH_MASK ;
 int ATOM_PPLIB_PCIE_LINK_WIDTH_SHIFT ;
 int ATOM_PPLIB_SINGLE_DISPLAY_ONLY ;
 scalar_t__ CHIP_BARTS ;
 void* POWER_STATE_TYPE_BALANCED ;
 void* POWER_STATE_TYPE_BATTERY ;
 void* POWER_STATE_TYPE_DEFAULT ;
 void* POWER_STATE_TYPE_PERFORMANCE ;
 int RADEON_IS_IGP ;
 int RADEON_PM_STATE_SINGLE_DISPLAY_ONLY ;
 int SET_VOLTAGE_TYPE_ASIC_VDDCI ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int radeon_atom_get_max_voltage (struct radeon_device*,int ,void**) ;
 int radeon_atombios_get_default_voltages (struct radeon_device*,void**,void**,void**) ;

__attribute__((used)) static void radeon_atombios_parse_pplib_non_clock_info(struct radeon_device *rdev,
             int state_index, int mode_index,
             struct _ATOM_PPLIB_NONCLOCK_INFO *non_clock_info)
{
 int j;
 u32 misc = le32_to_cpu(non_clock_info->ulCapsAndSettings);
 u32 misc2 = le16_to_cpu(non_clock_info->usClassification);
 u16 vddc, vddci, mvdd;

 radeon_atombios_get_default_voltages(rdev, &vddc, &vddci, &mvdd);

 rdev->pm.power_state[state_index].misc = misc;
 rdev->pm.power_state[state_index].misc2 = misc2;
 rdev->pm.power_state[state_index].pcie_lanes =
  ((misc & ATOM_PPLIB_PCIE_LINK_WIDTH_MASK) >>
   ATOM_PPLIB_PCIE_LINK_WIDTH_SHIFT) + 1;
 switch (misc2 & ATOM_PPLIB_CLASSIFICATION_UI_MASK) {
 case 130:
  rdev->pm.power_state[state_index].type =
   POWER_STATE_TYPE_BATTERY;
  break;
 case 131:
  rdev->pm.power_state[state_index].type =
   POWER_STATE_TYPE_BALANCED;
  break;
 case 128:
  rdev->pm.power_state[state_index].type =
   POWER_STATE_TYPE_PERFORMANCE;
  break;
 case 129:
  if (misc2 & ATOM_PPLIB_CLASSIFICATION_3DPERFORMANCE)
   rdev->pm.power_state[state_index].type =
    POWER_STATE_TYPE_PERFORMANCE;
  break;
 }
 rdev->pm.power_state[state_index].flags = 0;
 if (misc & ATOM_PPLIB_SINGLE_DISPLAY_ONLY)
  rdev->pm.power_state[state_index].flags |=
   RADEON_PM_STATE_SINGLE_DISPLAY_ONLY;
 if (misc2 & ATOM_PPLIB_CLASSIFICATION_BOOT) {
  rdev->pm.power_state[state_index].type =
   POWER_STATE_TYPE_DEFAULT;
  rdev->pm.default_power_state_index = state_index;
  rdev->pm.power_state[state_index].default_clock_mode =
   &rdev->pm.power_state[state_index].clock_info[mode_index - 1];
  if ((rdev->family >= CHIP_BARTS) && !(rdev->flags & RADEON_IS_IGP)) {

   rdev->pm.default_sclk = rdev->pm.power_state[state_index].clock_info[0].sclk;
   rdev->pm.default_mclk = rdev->pm.power_state[state_index].clock_info[0].mclk;
   rdev->pm.default_vddc = rdev->pm.power_state[state_index].clock_info[0].voltage.voltage;
   rdev->pm.default_vddci = rdev->pm.power_state[state_index].clock_info[0].voltage.vddci;
  } else {
   u16 max_vddci = 0;

   if (ASIC_IS_DCE4(rdev))
    radeon_atom_get_max_voltage(rdev,
           SET_VOLTAGE_TYPE_ASIC_VDDCI,
           &max_vddci);

   for (j = 0; j < mode_index; j++) {
    rdev->pm.power_state[state_index].clock_info[j].mclk =
     rdev->clock.default_mclk;
    rdev->pm.power_state[state_index].clock_info[j].sclk =
     rdev->clock.default_sclk;
    if (vddc)
     rdev->pm.power_state[state_index].clock_info[j].voltage.voltage =
      vddc;
    if (max_vddci)
     rdev->pm.power_state[state_index].clock_info[j].voltage.vddci =
      max_vddci;
   }
  }
 }
}

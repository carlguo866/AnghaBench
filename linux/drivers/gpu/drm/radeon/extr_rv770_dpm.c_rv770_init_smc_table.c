
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_13__ {int sclk; } ;
struct rv7xx_ps {TYPE_1__ low; } ;
struct TYPE_16__ {int initialState; int driverState; int systemFlags; int extraFlags; int thermalProtectType; } ;
struct rv7xx_power_info {int sram_end; int state_table_start; scalar_t__ mem_gddr5; int boot_sclk; TYPE_4__ smc_statetable; } ;
struct radeon_ps {int dummy; } ;
struct TYPE_14__ {int platform_caps; } ;
struct TYPE_15__ {int int_thermal_type; TYPE_2__ dpm; } ;
struct radeon_device {scalar_t__ family; TYPE_3__ pm; } ;
typedef TYPE_4__ RV770_SMC_STATETABLE ;


 int ATOM_PP_PLATFORM_CAP_DONT_WAIT_FOR_VBLANK_ON_ALERT ;
 int ATOM_PP_PLATFORM_CAP_GOTO_BOOT_ON_ALERT ;
 int ATOM_PP_PLATFORM_CAP_HARDWAREDC ;
 int ATOM_PP_PLATFORM_CAP_STEPVDDC ;
 scalar_t__ CHIP_RV710 ;
 scalar_t__ CHIP_RV730 ;
 scalar_t__ CHIP_RV740 ;
 int PPSMC_EXTRAFLAGS_AC2DC_ACTION_GOTOINITIALSTATE ;
 int PPSMC_EXTRAFLAGS_AC2DC_DONT_WAIT_FOR_VBLANK ;
 int PPSMC_SYSTEMFLAG_GDDR5 ;
 int PPSMC_SYSTEMFLAG_GPIO_DC ;
 int PPSMC_SYSTEMFLAG_STEPVDDC ;
 int PPSMC_THERMAL_PROTECT_TYPE_EXTERNAL ;
 int PPSMC_THERMAL_PROTECT_TYPE_INTERNAL ;
 int PPSMC_THERMAL_PROTECT_TYPE_NONE ;




 int memset (TYPE_4__*,int ,int) ;
 int rv730_populate_smc_acpi_state (struct radeon_device*,TYPE_4__*) ;
 int rv730_populate_smc_initial_state (struct radeon_device*,struct radeon_ps*,TYPE_4__*) ;
 int rv740_populate_smc_acpi_state (struct radeon_device*,TYPE_4__*) ;
 int rv770_copy_bytes_to_smc (struct radeon_device*,int ,int const*,int,int ) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;
 struct rv7xx_ps* rv770_get_ps (struct radeon_ps*) ;
 int rv770_populate_smc_acpi_state (struct radeon_device*,TYPE_4__*) ;
 int rv770_populate_smc_initial_state (struct radeon_device*,struct radeon_ps*,TYPE_4__*) ;
 int rv770_populate_smc_mvdd_table (struct radeon_device*,TYPE_4__*) ;
 int rv770_populate_smc_vddc_table (struct radeon_device*,TYPE_4__*) ;

__attribute__((used)) static int rv770_init_smc_table(struct radeon_device *rdev,
    struct radeon_ps *radeon_boot_state)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);
 struct rv7xx_ps *boot_state = rv770_get_ps(radeon_boot_state);
 RV770_SMC_STATETABLE *table = &pi->smc_statetable;
 int ret;

 memset(table, 0, sizeof(RV770_SMC_STATETABLE));

 pi->boot_sclk = boot_state->low.sclk;

 rv770_populate_smc_vddc_table(rdev, table);
 rv770_populate_smc_mvdd_table(rdev, table);

 switch (rdev->pm.int_thermal_type) {
 case 128:
 case 131:
  table->thermalProtectType = PPSMC_THERMAL_PROTECT_TYPE_INTERNAL;
  break;
 case 129:
  table->thermalProtectType = PPSMC_THERMAL_PROTECT_TYPE_NONE;
  break;
 case 130:
 default:
  table->thermalProtectType = PPSMC_THERMAL_PROTECT_TYPE_EXTERNAL;
  break;
 }

 if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_HARDWAREDC) {
  table->systemFlags |= PPSMC_SYSTEMFLAG_GPIO_DC;

  if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_DONT_WAIT_FOR_VBLANK_ON_ALERT)
   table->extraFlags |= PPSMC_EXTRAFLAGS_AC2DC_DONT_WAIT_FOR_VBLANK;

  if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_GOTO_BOOT_ON_ALERT)
   table->extraFlags |= PPSMC_EXTRAFLAGS_AC2DC_ACTION_GOTOINITIALSTATE;
 }

 if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_STEPVDDC)
  table->systemFlags |= PPSMC_SYSTEMFLAG_STEPVDDC;

 if (pi->mem_gddr5)
  table->systemFlags |= PPSMC_SYSTEMFLAG_GDDR5;

 if ((rdev->family == CHIP_RV730) || (rdev->family == CHIP_RV710))
  ret = rv730_populate_smc_initial_state(rdev, radeon_boot_state, table);
 else
  ret = rv770_populate_smc_initial_state(rdev, radeon_boot_state, table);
 if (ret)
  return ret;

 if (rdev->family == CHIP_RV740)
  ret = rv740_populate_smc_acpi_state(rdev, table);
 else if ((rdev->family == CHIP_RV730) || (rdev->family == CHIP_RV710))
  ret = rv730_populate_smc_acpi_state(rdev, table);
 else
  ret = rv770_populate_smc_acpi_state(rdev, table);
 if (ret)
  return ret;

 table->driverState = table->initialState;

 return rv770_copy_bytes_to_smc(rdev,
           pi->state_table_start,
           (const u8 *)table,
           sizeof(RV770_SMC_STATETABLE),
           pi->sram_end);
}

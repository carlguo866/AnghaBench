
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* u8 ;
typedef int u16 ;
struct si_power_info {scalar_t__ force_pcie_gen; int max_cu; scalar_t__ vddc_phase_shed_control; } ;
struct rv7xx_power_info {scalar_t__ mclk_stutter_mode_threshold; scalar_t__ mclk_edc_enable_threshold; scalar_t__ mem_gddr5; } ;
struct rv7xx_pl {scalar_t__ mclk; int sclk; int vddc; int vddci; scalar_t__ pcie_gen; } ;
struct TYPE_9__ {int phase_shedding_limits_table; } ;
struct TYPE_10__ {int new_active_crtc_count; TYPE_1__ dyn_state; } ;
struct TYPE_11__ {TYPE_2__ dpm; } ;
struct radeon_device {TYPE_3__ pm; } ;
struct evergreen_power_info {scalar_t__ mclk_edc_wr_enable_threshold; int vddci_voltage_table; scalar_t__ vddci_control; int vddc_voltage_table; int uvd_enabled; scalar_t__ pcie_performance_request; } ;
struct TYPE_13__ {int index; } ;
struct TYPE_12__ {int strobeMode; int mvdd; int MaxPoweredUpCU; TYPE_5__ vddc; TYPE_5__ vddci; int std_vddc; int mclk; int mcFlags; int sclk; void* gen2PCIE; } ;
typedef TYPE_4__ SISLANDS_SMC_HW_PERFORMANCE_LEVEL ;


 int DPG_PIPE_STUTTER_CONTROL ;
 int MC_SEQ_MISC5 ;
 int MC_SEQ_MISC6 ;
 int MC_SEQ_MISC7 ;
 scalar_t__ RADEON_PCIE_GEN_INVALID ;
 int RREG32 (int ) ;
 int SISLANDS_SMC_MC_EDC_RD_FLAG ;
 int SISLANDS_SMC_MC_EDC_WR_FLAG ;
 int SISLANDS_SMC_MC_PG_EN ;
 int SISLANDS_SMC_MC_STUTTER_EN ;
 int SISLANDS_SMC_STROBE_ENABLE ;
 int STUTTER_ENABLE ;
 struct evergreen_power_info* evergreen_get_pi (struct radeon_device*) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;
 int si_get_mclk_frequency_ratio (scalar_t__,int) ;
 struct si_power_info* si_get_pi (struct radeon_device*) ;
 int si_get_std_voltage_value (struct radeon_device*,TYPE_5__*,int *) ;
 void* si_get_strobe_mode_settings (struct radeon_device*,scalar_t__) ;
 int si_populate_mclk_value (struct radeon_device*,int ,scalar_t__,int *,int,int) ;
 int si_populate_mvdd_value (struct radeon_device*,scalar_t__,int *) ;
 int si_populate_phase_shedding_value (struct radeon_device*,int *,int ,int ,scalar_t__,TYPE_5__*) ;
 int si_populate_sclk_value (struct radeon_device*,int ,int *) ;
 int si_populate_std_voltage_value (struct radeon_device*,int ,int ,int *) ;
 int si_populate_voltage_value (struct radeon_device*,int *,int ,TYPE_5__*) ;

__attribute__((used)) static int si_convert_power_level_to_smc(struct radeon_device *rdev,
      struct rv7xx_pl *pl,
      SISLANDS_SMC_HW_PERFORMANCE_LEVEL *level)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);
 struct evergreen_power_info *eg_pi = evergreen_get_pi(rdev);
 struct si_power_info *si_pi = si_get_pi(rdev);
 int ret;
 bool dll_state_on;
 u16 std_vddc;
 bool gmc_pg = 0;

 if (eg_pi->pcie_performance_request &&
     (si_pi->force_pcie_gen != RADEON_PCIE_GEN_INVALID))
  level->gen2PCIE = (u8)si_pi->force_pcie_gen;
 else
  level->gen2PCIE = (u8)pl->pcie_gen;

 ret = si_populate_sclk_value(rdev, pl->sclk, &level->sclk);
 if (ret)
  return ret;

 level->mcFlags = 0;

 if (pi->mclk_stutter_mode_threshold &&
     (pl->mclk <= pi->mclk_stutter_mode_threshold) &&
     !eg_pi->uvd_enabled &&
     (RREG32(DPG_PIPE_STUTTER_CONTROL) & STUTTER_ENABLE) &&
     (rdev->pm.dpm.new_active_crtc_count <= 2)) {
  level->mcFlags |= SISLANDS_SMC_MC_STUTTER_EN;

  if (gmc_pg)
   level->mcFlags |= SISLANDS_SMC_MC_PG_EN;
 }

 if (pi->mem_gddr5) {
  if (pl->mclk > pi->mclk_edc_enable_threshold)
   level->mcFlags |= SISLANDS_SMC_MC_EDC_RD_FLAG;

  if (pl->mclk > eg_pi->mclk_edc_wr_enable_threshold)
   level->mcFlags |= SISLANDS_SMC_MC_EDC_WR_FLAG;

  level->strobeMode = si_get_strobe_mode_settings(rdev, pl->mclk);

  if (level->strobeMode & SISLANDS_SMC_STROBE_ENABLE) {
   if (si_get_mclk_frequency_ratio(pl->mclk, 1) >=
       ((RREG32(MC_SEQ_MISC7) >> 16) & 0xf))
    dll_state_on = ((RREG32(MC_SEQ_MISC5) >> 1) & 0x1) ? 1 : 0;
   else
    dll_state_on = ((RREG32(MC_SEQ_MISC6) >> 1) & 0x1) ? 1 : 0;
  } else {
   dll_state_on = 0;
  }
 } else {
  level->strobeMode = si_get_strobe_mode_settings(rdev,
        pl->mclk);

  dll_state_on = ((RREG32(MC_SEQ_MISC5) >> 1) & 0x1) ? 1 : 0;
 }

 ret = si_populate_mclk_value(rdev,
         pl->sclk,
         pl->mclk,
         &level->mclk,
         (level->strobeMode & SISLANDS_SMC_STROBE_ENABLE) != 0, dll_state_on);
 if (ret)
  return ret;

 ret = si_populate_voltage_value(rdev,
     &eg_pi->vddc_voltage_table,
     pl->vddc, &level->vddc);
 if (ret)
  return ret;


 ret = si_get_std_voltage_value(rdev, &level->vddc, &std_vddc);
 if (ret)
  return ret;

 ret = si_populate_std_voltage_value(rdev, std_vddc,
         level->vddc.index, &level->std_vddc);
 if (ret)
  return ret;

 if (eg_pi->vddci_control) {
  ret = si_populate_voltage_value(rdev, &eg_pi->vddci_voltage_table,
      pl->vddci, &level->vddci);
  if (ret)
   return ret;
 }

 if (si_pi->vddc_phase_shed_control) {
  ret = si_populate_phase_shedding_value(rdev,
             &rdev->pm.dpm.dyn_state.phase_shedding_limits_table,
             pl->vddc,
             pl->sclk,
             pl->mclk,
             &level->vddc);
  if (ret)
   return ret;
 }

 level->MaxPoweredUpCU = si_pi->max_cu;

 ret = si_populate_mvdd_value(rdev, pl->mclk, &level->mvdd);

 return ret;
}

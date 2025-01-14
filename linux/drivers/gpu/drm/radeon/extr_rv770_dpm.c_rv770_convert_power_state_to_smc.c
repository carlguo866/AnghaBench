
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct rv7xx_ps {int high; int medium; int low; } ;
struct radeon_ps {int caps; } ;
struct radeon_device {int dummy; } ;
struct TYPE_7__ {void* seqValue; int arbValue; } ;
struct TYPE_6__ {TYPE_5__* levels; int flags; } ;
typedef TYPE_1__ RV770_SMC_SWSTATE ;


 int ATOM_PPLIB_DISALLOW_ON_DC ;
 int MC_CG_ARB_FREQ_F1 ;
 int MC_CG_ARB_FREQ_F2 ;
 int MC_CG_ARB_FREQ_F3 ;
 int PPSMC_DISPLAY_WATERMARK_HIGH ;
 int PPSMC_DISPLAY_WATERMARK_LOW ;
 int PPSMC_SWSTATE_FLAG_DC ;
 int rv770_convert_power_level_to_smc (struct radeon_device*,int *,TYPE_5__*,int ) ;
 struct rv7xx_ps* rv770_get_ps (struct radeon_ps*) ;
 void* rv770_get_seq_value (struct radeon_device*,int *) ;
 int rv770_populate_smc_sp (struct radeon_device*,struct radeon_ps*,TYPE_1__*) ;
 int rv770_populate_smc_t (struct radeon_device*,struct radeon_ps*,TYPE_1__*) ;

__attribute__((used)) static int rv770_convert_power_state_to_smc(struct radeon_device *rdev,
         struct radeon_ps *radeon_state,
         RV770_SMC_SWSTATE *smc_state)
{
 struct rv7xx_ps *state = rv770_get_ps(radeon_state);
 int ret;

 if (!(radeon_state->caps & ATOM_PPLIB_DISALLOW_ON_DC))
  smc_state->flags |= PPSMC_SWSTATE_FLAG_DC;

 ret = rv770_convert_power_level_to_smc(rdev,
            &state->low,
            &smc_state->levels[0],
            PPSMC_DISPLAY_WATERMARK_LOW);
 if (ret)
  return ret;

 ret = rv770_convert_power_level_to_smc(rdev,
            &state->medium,
            &smc_state->levels[1],
            PPSMC_DISPLAY_WATERMARK_LOW);
 if (ret)
  return ret;

 ret = rv770_convert_power_level_to_smc(rdev,
            &state->high,
            &smc_state->levels[2],
            PPSMC_DISPLAY_WATERMARK_HIGH);
 if (ret)
  return ret;

 smc_state->levels[0].arbValue = MC_CG_ARB_FREQ_F1;
 smc_state->levels[1].arbValue = MC_CG_ARB_FREQ_F2;
 smc_state->levels[2].arbValue = MC_CG_ARB_FREQ_F3;

 smc_state->levels[0].seqValue = rv770_get_seq_value(rdev,
           &state->low);
 smc_state->levels[1].seqValue = rv770_get_seq_value(rdev,
           &state->medium);
 smc_state->levels[2].seqValue = rv770_get_seq_value(rdev,
           &state->high);

 rv770_populate_smc_sp(rdev, radeon_state, smc_state);

 return rv770_populate_smc_t(rdev, radeon_state, smc_state);

}

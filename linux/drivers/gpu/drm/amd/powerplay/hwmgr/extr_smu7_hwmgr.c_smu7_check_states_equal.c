
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ evclk; scalar_t__ ecclk; } ;
struct TYPE_3__ {scalar_t__ vclk; scalar_t__ dclk; } ;
struct smu7_power_state {int performance_level_count; scalar_t__ sclk_threshold; TYPE_2__ vce_clks; TYPE_1__ uvd_clks; int * performance_levels; } ;
struct smu7_hwmgr {int need_update_smu7_dpm_table; } ;
struct pp_hwmgr {scalar_t__ backend; } ;
struct pp_hw_power_state {int dummy; } ;


 int DPMTABLE_OD_UPDATE_MCLK ;
 int DPMTABLE_OD_UPDATE_SCLK ;
 int DPMTABLE_OD_UPDATE_VDDC ;
 int EINVAL ;
 struct smu7_power_state* cast_const_phw_smu7_power_state (struct pp_hw_power_state const*) ;
 int smu7_are_power_levels_equal (int *,int *) ;

__attribute__((used)) static int smu7_check_states_equal(struct pp_hwmgr *hwmgr,
  const struct pp_hw_power_state *pstate1,
  const struct pp_hw_power_state *pstate2, bool *equal)
{
 const struct smu7_power_state *psa;
 const struct smu7_power_state *psb;
 int i;
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);

 if (pstate1 == ((void*)0) || pstate2 == ((void*)0) || equal == ((void*)0))
  return -EINVAL;

 psa = cast_const_phw_smu7_power_state(pstate1);
 psb = cast_const_phw_smu7_power_state(pstate2);

 if (psa->performance_level_count != psb->performance_level_count) {
  *equal = 0;
  return 0;
 }

 for (i = 0; i < psa->performance_level_count; i++) {
  if (!smu7_are_power_levels_equal(&(psa->performance_levels[i]), &(psb->performance_levels[i]))) {

   *equal = 0;
   return 0;
  }
 }


 *equal = ((psa->uvd_clks.vclk == psb->uvd_clks.vclk) && (psa->uvd_clks.dclk == psb->uvd_clks.dclk));
 *equal &= ((psa->vce_clks.evclk == psb->vce_clks.evclk) && (psa->vce_clks.ecclk == psb->vce_clks.ecclk));
 *equal &= (psa->sclk_threshold == psb->sclk_threshold);

 *equal &= !(data->need_update_smu7_dpm_table & (DPMTABLE_OD_UPDATE_SCLK |
       DPMTABLE_OD_UPDATE_MCLK |
       DPMTABLE_OD_UPDATE_VDDC));

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct vega20_single_dpm_table {int count; TYPE_1__* dpm_levels; } ;
struct vega20_dpm_table {struct vega20_single_dpm_table mem_table; struct vega20_single_dpm_table gfx_table; } ;
struct smu_dpm_context {int dpm_level; struct vega20_dpm_table* golden_dpm_context; struct vega20_dpm_table* dpm_context; } ;
struct TYPE_5__ {int gfxclk; } ;
struct TYPE_6__ {TYPE_2__ boot_values; } ;
struct smu_context {int mutex; TYPE_3__ smu_table; struct smu_dpm_context smu_dpm; } ;
typedef enum smu_clk_type { ____Placeholder_smu_clk_type } smu_clk_type ;
struct TYPE_4__ {int value; } ;
typedef int PPCLK_e ;


 int AMD_PP_TASK_READJUST_POWER_STATE ;
 int EINVAL ;
 int OD8_SETTING_GFXCLK_FMAX ;
 int OD8_SETTING_UCLK_FMAX ;
 int PPCLK_GFXCLK ;
 int PPCLK_UCLK ;
 int SMU_FEATURE_DPM_GFXCLK_BIT ;
 int SMU_FEATURE_DPM_UCLK_BIT ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 int smu_feature_is_enabled (struct smu_context*,int ) ;
 int smu_handle_task (struct smu_context*,int ,int ) ;
 int vega20_set_single_dpm_table (struct smu_context*,struct vega20_single_dpm_table*,int ) ;
 int vega20_update_od8_settings (struct smu_context*,int,int) ;

__attribute__((used)) static int vega20_set_od_percentage(struct smu_context *smu,
        enum smu_clk_type clk_type,
        uint32_t value)
{
 struct smu_dpm_context *smu_dpm = &smu->smu_dpm;
 struct vega20_dpm_table *dpm_table = ((void*)0);
 struct vega20_dpm_table *golden_table = ((void*)0);
 struct vega20_single_dpm_table *single_dpm_table;
 struct vega20_single_dpm_table *golden_dpm_table;
 uint32_t od_clk, index;
 int ret = 0;
 int feature_enabled;
 PPCLK_e clk_id;

 mutex_lock(&(smu->mutex));

 dpm_table = smu_dpm->dpm_context;
 golden_table = smu_dpm->golden_dpm_context;

 switch (clk_type) {
 case 128:
  single_dpm_table = &(dpm_table->gfx_table);
  golden_dpm_table = &(golden_table->gfx_table);
  feature_enabled = smu_feature_is_enabled(smu, SMU_FEATURE_DPM_GFXCLK_BIT);
  clk_id = PPCLK_GFXCLK;
  index = OD8_SETTING_GFXCLK_FMAX;
  break;
 case 129:
  single_dpm_table = &(dpm_table->mem_table);
  golden_dpm_table = &(golden_table->mem_table);
  feature_enabled = smu_feature_is_enabled(smu, SMU_FEATURE_DPM_UCLK_BIT);
  clk_id = PPCLK_UCLK;
  index = OD8_SETTING_UCLK_FMAX;
  break;
 default:
  ret = -EINVAL;
  break;
 }

 if (ret)
  goto set_od_failed;

 od_clk = golden_dpm_table->dpm_levels[golden_dpm_table->count - 1].value * value;
 od_clk /= 100;
 od_clk += golden_dpm_table->dpm_levels[golden_dpm_table->count - 1].value;

 ret = vega20_update_od8_settings(smu, index, od_clk);
 if (ret) {
  pr_err("[Setoverdrive] failed to set od clk!\n");
  goto set_od_failed;
 }

 if (feature_enabled) {
  ret = vega20_set_single_dpm_table(smu, single_dpm_table,
        clk_id);
  if (ret) {
   pr_err("[Setoverdrive] failed to refresh dpm table!\n");
   goto set_od_failed;
  }
 } else {
  single_dpm_table->count = 1;
  single_dpm_table->dpm_levels[0].value = smu->smu_table.boot_values.gfxclk / 100;
 }

 ret = smu_handle_task(smu, smu_dpm->dpm_level,
         AMD_PP_TASK_READJUST_POWER_STATE);

set_od_failed:
 mutex_unlock(&(smu->mutex));

 return ret;
}

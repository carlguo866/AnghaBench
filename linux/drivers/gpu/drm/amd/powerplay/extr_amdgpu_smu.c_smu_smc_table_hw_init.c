
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_context {int default_power_limit; struct amdgpu_device* adev; } ;
struct amdgpu_device {scalar_t__ asic_type; scalar_t__ in_suspend; } ;


 scalar_t__ CHIP_ARCTURUS ;
 int pr_info (char*) ;
 int smu_check_fw_version (struct smu_context*) ;
 int smu_check_pptable (struct smu_context*) ;
 int smu_feature_set_allowed_mask (struct smu_context*) ;
 int smu_get_clk_info_from_vbios (struct smu_context*) ;
 int smu_get_power_limit (struct smu_context*,int *,int) ;
 int smu_get_vbios_bootup_values (struct smu_context*) ;
 int smu_init_display_count (struct smu_context*,int ) ;
 int smu_init_fb_allocations (struct smu_context*) ;
 int smu_init_max_sustainable_clocks (struct smu_context*) ;
 scalar_t__ smu_is_dpm_running (struct smu_context*) ;
 int smu_notify_display_change (struct smu_context*) ;
 int smu_override_pcie_parameters (struct smu_context*) ;
 int smu_parse_pptable (struct smu_context*) ;
 int smu_populate_smc_tables (struct smu_context*) ;
 int smu_populate_umd_state_clk (struct smu_context*) ;
 int smu_run_afll_btc (struct smu_context*) ;
 int smu_set_default_od_settings (struct smu_context*,int) ;
 int smu_set_min_dcef_deep_sleep (struct smu_context*) ;
 int smu_set_tool_table_location (struct smu_context*) ;
 int smu_setup_pptable (struct smu_context*) ;
 int smu_system_features_control (struct smu_context*,int) ;
 int smu_write_pptable (struct smu_context*) ;

__attribute__((used)) static int smu_smc_table_hw_init(struct smu_context *smu,
     bool initialize)
{
 struct amdgpu_device *adev = smu->adev;
 int ret;

 if (smu_is_dpm_running(smu) && adev->in_suspend) {
  pr_info("dpm has been enabled\n");
  return 0;
 }

 if (adev->asic_type != CHIP_ARCTURUS) {
  ret = smu_init_display_count(smu, 0);
  if (ret)
   return ret;
 }

 if (initialize) {

  ret = smu_get_vbios_bootup_values(smu);
  if (ret)
   return ret;

  ret = smu_setup_pptable(smu);
  if (ret)
   return ret;

  ret = smu_get_clk_info_from_vbios(smu);
  if (ret)
   return ret;





  ret = smu_check_pptable(smu);
  if (ret)
   return ret;




  ret = smu_init_fb_allocations(smu);
  if (ret)
   return ret;






  ret = smu_parse_pptable(smu);
  if (ret)
   return ret;





  ret = smu_check_fw_version(smu);
  if (ret)
   return ret;
 }







 ret = smu_write_pptable(smu);
 if (ret)
  return ret;


 ret = smu_run_afll_btc(smu);
 if (ret)
  return ret;

 ret = smu_feature_set_allowed_mask(smu);
 if (ret)
  return ret;

 ret = smu_system_features_control(smu, 1);
 if (ret)
  return ret;

 if (adev->asic_type != CHIP_ARCTURUS) {
  ret = smu_override_pcie_parameters(smu);
  if (ret)
   return ret;

  ret = smu_notify_display_change(smu);
  if (ret)
   return ret;





  ret = smu_set_min_dcef_deep_sleep(smu);
  if (ret)
   return ret;
 }






 if (initialize) {
  ret = smu_populate_smc_tables(smu);
  if (ret)
   return ret;

  ret = smu_init_max_sustainable_clocks(smu);
  if (ret)
   return ret;
 }

 ret = smu_set_default_od_settings(smu, initialize);
 if (ret)
  return ret;

 if (initialize) {
  ret = smu_populate_umd_state_clk(smu);
  if (ret)
   return ret;

  ret = smu_get_power_limit(smu, &smu->default_power_limit, 1);
  if (ret)
   return ret;
 }




 ret = smu_set_tool_table_location(smu);

 if (!smu_is_dpm_running(smu))
  pr_info("dpm has been disabled\n");

 return ret;
}

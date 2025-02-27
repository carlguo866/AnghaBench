
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct ci_power_info {int mclk_dpm_key_disabled; int sclk_dpm_key_disabled; } ;
typedef scalar_t__ PPSMC_Result ;


 int CAC_EN ;
 int EINVAL ;
 int LCAC_CPL_CNTL ;
 int LCAC_MC0_CNTL ;
 int LCAC_MC1_CNTL ;
 int MC_SEQ_CNTL_3 ;
 int PPSMC_MSG_DPM_Disable ;
 int PPSMC_MSG_DPM_Enable ;
 int PPSMC_MSG_MCLKDPM_Disable ;
 int PPSMC_MSG_MCLKDPM_Enable ;
 scalar_t__ PPSMC_Result_OK ;
 int WREG32_P (int ,int ,int ) ;
 int WREG32_SMC (int ,int) ;
 struct ci_power_info* ci_get_pi (struct radeon_device*) ;
 scalar_t__ ci_send_msg_to_smc (struct radeon_device*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int ci_enable_sclk_mclk_dpm(struct radeon_device *rdev, bool enable)
{
 struct ci_power_info *pi = ci_get_pi(rdev);
 PPSMC_Result smc_result;

 if (enable) {
  if (!pi->sclk_dpm_key_disabled) {
   smc_result = ci_send_msg_to_smc(rdev, PPSMC_MSG_DPM_Enable);
   if (smc_result != PPSMC_Result_OK)
    return -EINVAL;
  }

  if (!pi->mclk_dpm_key_disabled) {
   smc_result = ci_send_msg_to_smc(rdev, PPSMC_MSG_MCLKDPM_Enable);
   if (smc_result != PPSMC_Result_OK)
    return -EINVAL;

   WREG32_P(MC_SEQ_CNTL_3, CAC_EN, ~CAC_EN);

   WREG32_SMC(LCAC_MC0_CNTL, 0x05);
   WREG32_SMC(LCAC_MC1_CNTL, 0x05);
   WREG32_SMC(LCAC_CPL_CNTL, 0x100005);

   udelay(10);

   WREG32_SMC(LCAC_MC0_CNTL, 0x400005);
   WREG32_SMC(LCAC_MC1_CNTL, 0x400005);
   WREG32_SMC(LCAC_CPL_CNTL, 0x500005);
  }
 } else {
  if (!pi->sclk_dpm_key_disabled) {
   smc_result = ci_send_msg_to_smc(rdev, PPSMC_MSG_DPM_Disable);
   if (smc_result != PPSMC_Result_OK)
    return -EINVAL;
  }

  if (!pi->mclk_dpm_key_disabled) {
   smc_result = ci_send_msg_to_smc(rdev, PPSMC_MSG_MCLKDPM_Disable);
   if (smc_result != PPSMC_Result_OK)
    return -EINVAL;
  }
 }

 return 0;
}

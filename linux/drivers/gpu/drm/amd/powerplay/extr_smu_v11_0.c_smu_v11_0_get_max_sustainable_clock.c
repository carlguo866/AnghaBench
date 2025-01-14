
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct smu_context {int pm_enabled; } ;
typedef enum smu_clk_type { ____Placeholder_smu_clk_type } smu_clk_type ;


 int EINVAL ;
 int SMU_MSG_GetDcModeMaxDpmFreq ;
 int SMU_MSG_GetMaxDpmFreq ;
 int pr_err (char*) ;
 int smu_clk_get_index (struct smu_context*,int) ;
 scalar_t__ smu_msg_get_index (struct smu_context*,int ) ;
 int smu_read_smc_arg (struct smu_context*,scalar_t__*) ;
 int smu_send_smc_msg_with_param (struct smu_context*,int ,int) ;

__attribute__((used)) static int
smu_v11_0_get_max_sustainable_clock(struct smu_context *smu, uint32_t *clock,
        enum smu_clk_type clock_select)
{
 int ret = 0;
 int clk_id;

 if (!smu->pm_enabled)
  return ret;

 if ((smu_msg_get_index(smu, SMU_MSG_GetDcModeMaxDpmFreq) < 0) ||
     (smu_msg_get_index(smu, SMU_MSG_GetMaxDpmFreq) < 0))
  return 0;

 clk_id = smu_clk_get_index(smu, clock_select);
 if (clk_id < 0)
  return -EINVAL;

 ret = smu_send_smc_msg_with_param(smu, SMU_MSG_GetDcModeMaxDpmFreq,
       clk_id << 16);
 if (ret) {
  pr_err("[GetMaxSustainableClock] Failed to get max DC clock from SMC!");
  return ret;
 }

 ret = smu_read_smc_arg(smu, clock);
 if (ret)
  return ret;

 if (*clock != 0)
  return 0;


 ret = smu_send_smc_msg_with_param(smu, SMU_MSG_GetMaxDpmFreq,
       clk_id << 16);
 if (ret) {
  pr_err("[GetMaxSustainableClock] failed to get max AC clock from SMC!");
  return ret;
 }

 ret = smu_read_smc_arg(smu, clock);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct ci_ulv_parm {scalar_t__ supported; } ;
struct ci_power_info {struct ci_ulv_parm ulv; } ;


 int EINVAL ;
 int PPSMC_MSG_DisableULV ;
 int PPSMC_MSG_EnableULV ;
 scalar_t__ PPSMC_Result_OK ;
 struct ci_power_info* ci_get_pi (struct radeon_device*) ;
 scalar_t__ ci_send_msg_to_smc (struct radeon_device*,int ) ;

__attribute__((used)) static int ci_enable_ulv(struct radeon_device *rdev, bool enable)
{
 struct ci_power_info *pi = ci_get_pi(rdev);
 struct ci_ulv_parm *ulv = &pi->ulv;

 if (ulv->supported) {
  if (enable)
   return (ci_send_msg_to_smc(rdev, PPSMC_MSG_EnableULV) == PPSMC_Result_OK) ?
    0 : -EINVAL;
  else
   return (ci_send_msg_to_smc(rdev, PPSMC_MSG_DisableULV) == PPSMC_Result_OK) ?
    0 : -EINVAL;
 }

 return 0;
}

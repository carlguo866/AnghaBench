
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct amdgpu_device {unsigned int* df_perfmon_config_assign_mask; } ;


 int DF_V3_6_MAX_COUNTERS ;
 int ENOSPC ;
 int df_v3_6_pmc_config_2_cntr (struct amdgpu_device*,int) ;

__attribute__((used)) static int df_v3_6_pmc_add_cntr(struct amdgpu_device *adev,
       uint64_t config)
{
 int i, target_cntr;

 target_cntr = df_v3_6_pmc_config_2_cntr(adev, config);

 if (target_cntr >= 0)
  return 0;

 for (i = 0; i < DF_V3_6_MAX_COUNTERS; i++) {
  if (adev->df_perfmon_config_assign_mask[i] == 0U) {
   adev->df_perfmon_config_assign_mask[i] =
       config & 0x0FFFFFFUL;
   return 0;
  }
 }

 return -ENOSPC;
}

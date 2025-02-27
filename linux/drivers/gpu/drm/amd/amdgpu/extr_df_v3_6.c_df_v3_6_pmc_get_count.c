
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
typedef unsigned long long uint32_t ;
struct amdgpu_device {int asic_type; } ;



 unsigned long long DF_V3_6_PERFMON_OVERFLOW ;
 int DRM_DEBUG_DRIVER (char*,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long) ;
 int df_v3_6_perfmon_rreg (struct amdgpu_device*,unsigned long long,unsigned long long*,unsigned long long,unsigned long long*) ;
 int df_v3_6_pmc_get_read_settings (struct amdgpu_device*,unsigned long long,unsigned long long*,unsigned long long*) ;

__attribute__((used)) static void df_v3_6_pmc_get_count(struct amdgpu_device *adev,
      uint64_t config,
      uint64_t *count)
{
 uint32_t lo_base_addr, hi_base_addr, lo_val, hi_val;
 *count = 0;

 switch (adev->asic_type) {
 case 128:

  df_v3_6_pmc_get_read_settings(adev, config, &lo_base_addr,
          &hi_base_addr);

  if ((lo_base_addr == 0) || (hi_base_addr == 0))
   return;

  df_v3_6_perfmon_rreg(adev, lo_base_addr, &lo_val,
    hi_base_addr, &hi_val);

  *count = ((hi_val | 0ULL) << 32) | (lo_val | 0ULL);

  if (*count >= DF_V3_6_PERFMON_OVERFLOW)
   *count = 0;

  DRM_DEBUG_DRIVER("config=%llx addr=%08x:%08x val=%08x:%08x",
    config, lo_base_addr, hi_base_addr, lo_val, hi_val);

  break;

 default:
  break;
 }
}

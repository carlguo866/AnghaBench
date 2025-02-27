
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int GC ;
 int GC_USER_SHADER_ARRAY_CONFIG__INACTIVE_CUS_MASK ;
 int GC_USER_SHADER_ARRAY_CONFIG__INACTIVE_CUS__SHIFT ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int mmGC_USER_SHADER_ARRAY_CONFIG ;

__attribute__((used)) static void gfx_v9_0_set_user_cu_inactive_bitmap(struct amdgpu_device *adev,
       u32 bitmap)
{
 u32 data;

 if (!bitmap)
  return;

 data = bitmap << GC_USER_SHADER_ARRAY_CONFIG__INACTIVE_CUS__SHIFT;
 data &= GC_USER_SHADER_ARRAY_CONFIG__INACTIVE_CUS_MASK;

 WREG32_SOC15(GC, 0, mmGC_USER_SHADER_ARRAY_CONFIG, data);
}

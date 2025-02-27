
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int cg_flags; } ;


 int AMD_CG_SUPPORT_MC_MGCG ;
 int ATHUB ;
 int ATHUB_MISC_CNTL__CG_ENABLE_MASK ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int mmATHUB_MISC_CNTL ;

__attribute__((used)) static void
athub_v2_0_update_medium_grain_clock_gating(struct amdgpu_device *adev,
         bool enable)
{
 uint32_t def, data;

 def = data = RREG32_SOC15(ATHUB, 0, mmATHUB_MISC_CNTL);

 if (enable && (adev->cg_flags & AMD_CG_SUPPORT_MC_MGCG))
  data |= ATHUB_MISC_CNTL__CG_ENABLE_MASK;
 else
  data &= ~ATHUB_MISC_CNTL__CG_ENABLE_MASK;

 if (def != data)
  WREG32_SOC15(ATHUB, 0, mmATHUB_MISC_CNTL, data);
}

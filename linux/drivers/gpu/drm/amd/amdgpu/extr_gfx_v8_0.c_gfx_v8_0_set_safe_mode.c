
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {unsigned int usec_timeout; } ;


 int CMD ;
 int REG_GET_FIELD (int,int ,int ) ;
 int RLC_GPM_STAT__GFX_CLOCK_STATUS_MASK ;
 int RLC_GPM_STAT__GFX_POWER_STATUS_MASK ;
 int RLC_SAFE_MODE ;
 int RLC_SAFE_MODE__CMD_MASK ;
 int RLC_SAFE_MODE__MESSAGE_MASK ;
 int RLC_SAFE_MODE__MESSAGE__SHIFT ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int mmRLC_CNTL ;
 int mmRLC_GPM_STAT ;
 int mmRLC_SAFE_MODE ;
 int udelay (int) ;

__attribute__((used)) static void gfx_v8_0_set_safe_mode(struct amdgpu_device *adev)
{
 uint32_t data;
 unsigned i;
 data = RREG32(mmRLC_CNTL);
 data |= RLC_SAFE_MODE__CMD_MASK;
 data &= ~RLC_SAFE_MODE__MESSAGE_MASK;
 data |= (1 << RLC_SAFE_MODE__MESSAGE__SHIFT);
 WREG32(mmRLC_SAFE_MODE, data);


 for (i = 0; i < adev->usec_timeout; i++) {
  if ((RREG32(mmRLC_GPM_STAT) &
       (RLC_GPM_STAT__GFX_CLOCK_STATUS_MASK |
        RLC_GPM_STAT__GFX_POWER_STATUS_MASK)) ==
      (RLC_GPM_STAT__GFX_CLOCK_STATUS_MASK |
       RLC_GPM_STAT__GFX_POWER_STATUS_MASK))
   break;
  udelay(1);
 }
 for (i = 0; i < adev->usec_timeout; i++) {
  if (!REG_GET_FIELD(RREG32(mmRLC_SAFE_MODE), RLC_SAFE_MODE, CMD))
   break;
  udelay(1);
 }
}

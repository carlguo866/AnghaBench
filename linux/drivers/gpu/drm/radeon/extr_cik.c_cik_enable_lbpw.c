
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int LOAD_BALANCE_ENABLE ;
 int RLC_LB_CNTL ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;

__attribute__((used)) static void cik_enable_lbpw(struct radeon_device *rdev, bool enable)
{
 u32 tmp;

 tmp = RREG32(RLC_LB_CNTL);
 if (enable)
  tmp |= LOAD_BALANCE_ENABLE;
 else
  tmp &= ~LOAD_BALANCE_ENABLE;
 WREG32(RLC_LB_CNTL, tmp);
}

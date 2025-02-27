
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;
struct atom_clock_dividers {int post_divider; } ;


 int CG_ECLK_CNTL ;
 int CG_ECLK_STATUS ;
 int COMPUTE_GPUCLK_INPUT_FLAG_DEFAULT_GPUCLK ;
 int ECLK_DIR_CNTL_EN ;
 int ECLK_DIVIDER_MASK ;
 int ECLK_STATUS ;
 int ETIMEDOUT ;
 int RREG32_SMC (int ) ;
 int WREG32_SMC (int ,int) ;
 int mdelay (int) ;
 int radeon_atom_get_clock_dividers (struct radeon_device*,int ,int,int,struct atom_clock_dividers*) ;

int cik_set_vce_clocks(struct radeon_device *rdev, u32 evclk, u32 ecclk)
{
 int r, i;
 struct atom_clock_dividers dividers;
 u32 tmp;

 r = radeon_atom_get_clock_dividers(rdev, COMPUTE_GPUCLK_INPUT_FLAG_DEFAULT_GPUCLK,
        ecclk, 0, &dividers);
 if (r)
  return r;

 for (i = 0; i < 100; i++) {
  if (RREG32_SMC(CG_ECLK_STATUS) & ECLK_STATUS)
   break;
  mdelay(10);
 }
 if (i == 100)
  return -ETIMEDOUT;

 tmp = RREG32_SMC(CG_ECLK_CNTL);
 tmp &= ~(ECLK_DIR_CNTL_EN|ECLK_DIVIDER_MASK);
 tmp |= dividers.post_divider;
 WREG32_SMC(CG_ECLK_CNTL, tmp);

 for (i = 0; i < 100; i++) {
  if (RREG32_SMC(CG_ECLK_STATUS) & ECLK_STATUS)
   break;
  mdelay(10);
 }
 if (i == 100)
  return -ETIMEDOUT;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_SCLK_DPM_CTRL_5 ;
 int RREG32 (int ) ;
 int TT_TP (int) ;
 int TT_TP_MASK ;
 int TT_TU (int) ;
 int TT_TU_MASK ;
 int WREG32 (int ,int) ;
 int r600_calculate_u_and_p (int,int,int,int*,int*) ;
 int radeon_get_xclk (struct radeon_device*) ;

__attribute__((used)) static void sumo_program_ttp(struct radeon_device *rdev)
{
 u32 xclk = radeon_get_xclk(rdev);
 u32 p, u;
 u32 cg_sclk_dpm_ctrl_5 = RREG32(CG_SCLK_DPM_CTRL_5);

 r600_calculate_u_and_p(1000,
          xclk, 16, &p, &u);

 cg_sclk_dpm_ctrl_5 &= ~(TT_TP_MASK | TT_TU_MASK);
 cg_sclk_dpm_ctrl_5 |= TT_TP(p) | TT_TU(u);

 WREG32(CG_SCLK_DPM_CTRL_5, cg_sclk_dpm_ctrl_5);
}

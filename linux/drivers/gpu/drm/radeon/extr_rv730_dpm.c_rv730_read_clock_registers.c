
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* mpll_ss2; void* mpll_ss; void* mpll_func_cntl3; void* mpll_func_cntl2; void* mpll_func_cntl; void* dll_cntl; void* mclk_pwrmgt_cntl; void* cg_spll_spread_spectrum_2; void* cg_spll_spread_spectrum; void* cg_spll_func_cntl_3; void* cg_spll_func_cntl_2; void* cg_spll_func_cntl; } ;
struct TYPE_4__ {TYPE_1__ rv730; } ;
struct rv7xx_power_info {TYPE_2__ clk_regs; } ;
struct radeon_device {int dummy; } ;


 int CG_MPLL_FUNC_CNTL ;
 int CG_MPLL_FUNC_CNTL_2 ;
 int CG_MPLL_FUNC_CNTL_3 ;
 int CG_SPLL_FUNC_CNTL ;
 int CG_SPLL_FUNC_CNTL_2 ;
 int CG_SPLL_FUNC_CNTL_3 ;
 int CG_SPLL_SPREAD_SPECTRUM ;
 int CG_SPLL_SPREAD_SPECTRUM_2 ;
 int CG_TCI_MPLL_SPREAD_SPECTRUM ;
 int CG_TCI_MPLL_SPREAD_SPECTRUM_2 ;
 void* RREG32 (int ) ;
 int TCI_DLL_CNTL ;
 int TCI_MCLK_PWRMGT_CNTL ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;

void rv730_read_clock_registers(struct radeon_device *rdev)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);

 pi->clk_regs.rv730.cg_spll_func_cntl =
  RREG32(CG_SPLL_FUNC_CNTL);
 pi->clk_regs.rv730.cg_spll_func_cntl_2 =
  RREG32(CG_SPLL_FUNC_CNTL_2);
 pi->clk_regs.rv730.cg_spll_func_cntl_3 =
  RREG32(CG_SPLL_FUNC_CNTL_3);
 pi->clk_regs.rv730.cg_spll_spread_spectrum =
  RREG32(CG_SPLL_SPREAD_SPECTRUM);
 pi->clk_regs.rv730.cg_spll_spread_spectrum_2 =
  RREG32(CG_SPLL_SPREAD_SPECTRUM_2);

 pi->clk_regs.rv730.mclk_pwrmgt_cntl =
  RREG32(TCI_MCLK_PWRMGT_CNTL);
 pi->clk_regs.rv730.dll_cntl =
  RREG32(TCI_DLL_CNTL);
 pi->clk_regs.rv730.mpll_func_cntl =
  RREG32(CG_MPLL_FUNC_CNTL);
 pi->clk_regs.rv730.mpll_func_cntl2 =
  RREG32(CG_MPLL_FUNC_CNTL_2);
 pi->clk_regs.rv730.mpll_func_cntl3 =
  RREG32(CG_MPLL_FUNC_CNTL_3);
 pi->clk_regs.rv730.mpll_ss =
  RREG32(CG_TCI_MPLL_SPREAD_SPECTRUM);
 pi->clk_regs.rv730.mpll_ss2 =
  RREG32(CG_TCI_MPLL_SPREAD_SPECTRUM_2);
}

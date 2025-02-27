
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ XUSBIO_PLL_CFG0 ;
 int XUSBIO_PLL_CFG0_CLK_ENABLE_SWCTL ;
 int XUSBIO_PLL_CFG0_PADPLL_RESET_SWCTL ;
 int XUSBIO_PLL_CFG0_PADPLL_SLEEP_IDDQ ;
 int XUSBIO_PLL_CFG0_PADPLL_USE_LOCKDET ;
 scalar_t__ clk_base ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

void tegra210_xusb_pll_hw_control_enable(void)
{
 u32 val;

 val = readl_relaxed(clk_base + XUSBIO_PLL_CFG0);
 val &= ~(XUSBIO_PLL_CFG0_CLK_ENABLE_SWCTL |
   XUSBIO_PLL_CFG0_PADPLL_RESET_SWCTL);
 val |= XUSBIO_PLL_CFG0_PADPLL_USE_LOCKDET |
        XUSBIO_PLL_CFG0_PADPLL_SLEEP_IDDQ;
 writel_relaxed(val, clk_base + XUSBIO_PLL_CFG0);
}

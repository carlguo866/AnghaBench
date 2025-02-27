
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct meson_host {scalar_t__ regs; int pins_default; int pinctrl; scalar_t__ pins_clk_gate; } ;


 int CFG_STOP_CLOCK ;
 scalar_t__ SD_EMMC_CFG ;
 int pinctrl_select_state (int ,int ) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void meson_mmc_clk_ungate(struct meson_host *host)
{
 u32 cfg;

 if (host->pins_clk_gate)
  pinctrl_select_state(host->pinctrl, host->pins_default);


 cfg = readl(host->regs + SD_EMMC_CFG);
 cfg &= ~CFG_STOP_CLOCK;
 writel(cfg, host->regs + SD_EMMC_CFG);
}

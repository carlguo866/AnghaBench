
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mmci_host {unsigned int mclk; int cclk; int hw_designer; scalar_t__ base; TYPE_2__* mmc; } ;
struct TYPE_3__ {scalar_t__ bus_width; } ;
struct TYPE_4__ {TYPE_1__ ios; } ;


 int MCI_CLK_BYPASS ;
 int MCI_CLK_ENABLE ;
 int MCI_FCEN ;
 int MCI_WIDE_BUS ;
 scalar_t__ MMCICLOCK ;
 scalar_t__ MMC_BUS_WIDTH_4 ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mmci_set_clkreg(struct mmci_host *host, unsigned int desired)
{
 u32 clk = 0;

 if (desired) {
  if (desired >= host->mclk) {
   clk = MCI_CLK_BYPASS;
   host->cclk = host->mclk;
  } else {
   clk = host->mclk / (2 * desired) - 1;
   if (clk >= 256)
    clk = 255;
   host->cclk = host->mclk / (2 * (clk + 1));
  }
  if (host->hw_designer == 0x80)
   clk |= MCI_FCEN;
  clk |= MCI_CLK_ENABLE;


 }

 if (host->mmc->ios.bus_width == MMC_BUS_WIDTH_4)
  clk |= MCI_WIDE_BUS;

 writel(clk, host->base + MMCICLOCK);
}

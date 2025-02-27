
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxcmci_host {int mmc; scalar_t__ base; int clk; } ;


 scalar_t__ MMC_REG_CLK_RATE ;
 unsigned int clk_get_rate (int ) ;
 int dev_dbg (int ,char*,int,unsigned int,unsigned int,unsigned int) ;
 int mmc_dev (int ) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void mxcmci_set_clk_rate(struct mxcmci_host *host, unsigned int clk_ios)
{
 unsigned int divider;
 int prescaler = 0;
 unsigned int clk_in = clk_get_rate(host->clk);

 while (prescaler <= 0x800) {
  for (divider = 1; divider <= 0xF; divider++) {
   int x;

   x = (clk_in / (divider + 1));

   if (prescaler)
    x /= (prescaler * 2);

   if (x <= clk_ios)
    break;
  }
  if (divider < 0x10)
   break;

  if (prescaler == 0)
   prescaler = 1;
  else
   prescaler <<= 1;
 }

 writew((prescaler << 4) | divider, host->base + MMC_REG_CLK_RATE);

 dev_dbg(mmc_dev(host->mmc), "scaler: %d divider: %d in: %d out: %d\n",
   prescaler, divider, clk_in, clk_ios);
}

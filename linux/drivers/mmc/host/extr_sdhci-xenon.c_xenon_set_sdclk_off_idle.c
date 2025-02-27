
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int dummy; } ;


 unsigned char XENON_SDCLK_IDLEOFF_ENABLE_SHIFT ;
 int XENON_SYS_OP_CTRL ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int,int ) ;

__attribute__((used)) static void xenon_set_sdclk_off_idle(struct sdhci_host *host,
         unsigned char sdhc_id, bool enable)
{
 u32 reg;
 u32 mask;

 reg = sdhci_readl(host, XENON_SYS_OP_CTRL);

 mask = (0x1 << (XENON_SDCLK_IDLEOFF_ENABLE_SHIFT + sdhc_id));
 if (enable)
  reg |= mask;
 else
  reg &= ~mask;

 sdhci_writel(host, reg, XENON_SYS_OP_CTRL);
}

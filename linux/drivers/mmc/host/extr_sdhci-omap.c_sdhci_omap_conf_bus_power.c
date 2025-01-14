
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_omap_host {int dummy; } ;
typedef int ktime_t ;


 int HCTL_SDBP ;
 int HCTL_SDVS_18 ;
 int HCTL_SDVS_33 ;
 int HCTL_SDVS_MASK ;
 unsigned char MMC_SIGNAL_VOLTAGE_330 ;
 int SDHCI_OMAP_HCTL ;
 int SDHCI_OMAP_TIMEOUT ;
 scalar_t__ WARN_ON (int) ;
 int ktime_add_ms (int ,int ) ;
 int ktime_after (int ,int ) ;
 int ktime_get () ;
 int sdhci_omap_readl (struct sdhci_omap_host*,int ) ;
 int sdhci_omap_writel (struct sdhci_omap_host*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void sdhci_omap_conf_bus_power(struct sdhci_omap_host *omap_host,
          unsigned char signal_voltage)
{
 u32 reg;
 ktime_t timeout;

 reg = sdhci_omap_readl(omap_host, SDHCI_OMAP_HCTL);
 reg &= ~HCTL_SDVS_MASK;

 if (signal_voltage == MMC_SIGNAL_VOLTAGE_330)
  reg |= HCTL_SDVS_33;
 else
  reg |= HCTL_SDVS_18;

 sdhci_omap_writel(omap_host, SDHCI_OMAP_HCTL, reg);

 reg |= HCTL_SDBP;
 sdhci_omap_writel(omap_host, SDHCI_OMAP_HCTL, reg);


 timeout = ktime_add_ms(ktime_get(), SDHCI_OMAP_TIMEOUT);
 while (1) {
  bool timedout = ktime_after(ktime_get(), timeout);

  if (sdhci_omap_readl(omap_host, SDHCI_OMAP_HCTL) & HCTL_SDBP)
   break;
  if (WARN_ON(timedout))
   return;
  usleep_range(5, 10);
 }
}

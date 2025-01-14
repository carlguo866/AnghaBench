
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_msm_host {unsigned int clk_rate; TYPE_1__* bulk_clks; } ;
struct sdhci_host {TYPE_2__* mmc; } ;
struct mmc_ios {int timing; } ;
struct clk {int dummy; } ;
struct TYPE_4__ {struct mmc_ios ios; } ;
struct TYPE_3__ {struct clk* clk; } ;


 int clk_get_rate (struct clk*) ;
 int clk_set_rate (struct clk*,unsigned int) ;
 int mmc_hostname (TYPE_2__*) ;
 unsigned int msm_get_clock_rate_for_bus_mode (struct sdhci_host*,unsigned int) ;
 int pr_debug (char*,int ,int ,int ) ;
 int pr_err (char*,int ,unsigned int,int ) ;
 struct sdhci_msm_host* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static void msm_set_clock_rate_for_bus_mode(struct sdhci_host *host,
         unsigned int clock)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_msm_host *msm_host = sdhci_pltfm_priv(pltfm_host);
 struct mmc_ios curr_ios = host->mmc->ios;
 struct clk *core_clk = msm_host->bulk_clks[0].clk;
 int rc;

 clock = msm_get_clock_rate_for_bus_mode(host, clock);
 rc = clk_set_rate(core_clk, clock);
 if (rc) {
  pr_err("%s: Failed to set clock at rate %u at timing %d\n",
         mmc_hostname(host->mmc), clock,
         curr_ios.timing);
  return;
 }
 msm_host->clk_rate = clock;
 pr_debug("%s: Setting clock at rate %lu at timing %d\n",
   mmc_hostname(host->mmc), clk_get_rate(core_clk),
   curr_ios.timing);
}

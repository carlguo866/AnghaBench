
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xenon_priv {int sdhc_id; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int preset_enabled; scalar_t__ clock; int quirks2; int flags; } ;
struct mmc_ios {scalar_t__ timing; } ;
struct mmc_host {int dummy; } ;


 scalar_t__ MMC_TIMING_MMC_HS ;
 scalar_t__ MMC_TIMING_MMC_HS200 ;
 scalar_t__ MMC_TIMING_MMC_HS400 ;
 int SDHCI_CTRL_PRESET_VAL_ENABLE ;
 int SDHCI_HOST_CONTROL2 ;
 int SDHCI_PV_ENABLED ;
 int SDHCI_QUIRK2_PRESET_VALUE_BROKEN ;
 scalar_t__ XENON_DEFAULT_SDCLK_FREQ ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 struct xenon_priv* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_set_ios (struct mmc_host*,struct mmc_ios*) ;
 int sdhci_writew (struct sdhci_host*,int ,int ) ;
 int xenon_phy_adj (struct sdhci_host*,struct mmc_ios*) ;
 int xenon_set_sdclk_off_idle (struct sdhci_host*,int ,int) ;

__attribute__((used)) static void xenon_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct sdhci_host *host = mmc_priv(mmc);
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct xenon_priv *priv = sdhci_pltfm_priv(pltfm_host);
 u32 reg;
 if ((ios->timing == MMC_TIMING_MMC_HS400) ||
     (ios->timing == MMC_TIMING_MMC_HS200) ||
     (ios->timing == MMC_TIMING_MMC_HS)) {
  host->preset_enabled = 0;
  host->quirks2 |= SDHCI_QUIRK2_PRESET_VALUE_BROKEN;
  host->flags &= ~SDHCI_PV_ENABLED;

  reg = sdhci_readw(host, SDHCI_HOST_CONTROL2);
  reg &= ~SDHCI_CTRL_PRESET_VAL_ENABLE;
  sdhci_writew(host, reg, SDHCI_HOST_CONTROL2);
 } else {
  host->quirks2 &= ~SDHCI_QUIRK2_PRESET_VALUE_BROKEN;
 }

 sdhci_set_ios(mmc, ios);
 xenon_phy_adj(host, ios);

 if (host->clock > XENON_DEFAULT_SDCLK_FREQ)
  xenon_set_sdclk_off_idle(host, priv->sdhc_id, 1);
}

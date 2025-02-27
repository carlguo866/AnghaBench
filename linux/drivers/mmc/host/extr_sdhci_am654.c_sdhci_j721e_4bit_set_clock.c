
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int dummy; } ;
struct sdhci_am654_data {int otap_del_sel; int base; } ;


 int OTAPDLYENA_MASK ;
 int OTAPDLYENA_SHIFT ;
 int OTAPDLYSEL_MASK ;
 int OTAPDLYSEL_SHIFT ;
 int PHY_CTRL4 ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct sdhci_am654_data* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_set_clock (struct sdhci_host*,unsigned int) ;

__attribute__((used)) static void sdhci_j721e_4bit_set_clock(struct sdhci_host *host,
           unsigned int clock)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_am654_data *sdhci_am654 = sdhci_pltfm_priv(pltfm_host);
 int val, mask;

 mask = OTAPDLYENA_MASK | OTAPDLYSEL_MASK;
 val = (1 << OTAPDLYENA_SHIFT) |
       (sdhci_am654->otap_del_sel << OTAPDLYSEL_SHIFT);
 regmap_update_bits(sdhci_am654->base, PHY_CTRL4, mask, val);

 sdhci_set_clock(host, clock);
}

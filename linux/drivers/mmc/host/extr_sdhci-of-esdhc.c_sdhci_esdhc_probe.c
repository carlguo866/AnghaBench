
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdhci_pltfm_host {int dummy; } ;
struct TYPE_4__ {int hs400_prepare_ddr; int execute_tuning; int start_signal_voltage_switch; } ;
struct sdhci_host {int tuning_delay; int ocr_mask; int mmc; int quirks2; int quirks; TYPE_2__ mmc_host_ops; } ;
struct sdhci_esdhc {int quirk_fixup_tuning; scalar_t__ vendor_ver; int quirk_ignore_data_inhibit; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 scalar_t__ IS_ERR (struct sdhci_host*) ;
 int PTR_ERR (struct sdhci_host*) ;
 int SDHCI_QUIRK2_BROKEN_HOST_CONTROL ;
 int SDHCI_QUIRK2_HOST_NO_CMD23 ;
 int SDHCI_QUIRK_BROKEN_CARD_DETECTION ;
 int SDHCI_QUIRK_BROKEN_TIMEOUT_VAL ;
 int SDHCI_QUIRK_NO_BUSY_IRQ ;
 int SDHCI_QUIRK_RESET_AFTER_REQUEST ;
 scalar_t__ VENDOR_V_22 ;
 int esdhc_execute_tuning ;
 int esdhc_hs400_prepare_ddr ;
 int esdhc_init (struct platform_device*,struct sdhci_host*) ;
 int esdhc_signal_voltage_switch ;
 int mmc_of_parse (int ) ;
 int mmc_of_parse_voltage (struct device_node*,int *) ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 scalar_t__ of_find_compatible_node (int *,int *,char*) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int sdhci_add_host (struct sdhci_host*) ;
 int sdhci_esdhc_be_pdata ;
 int sdhci_esdhc_le_pdata ;
 int sdhci_get_of_property (struct platform_device*) ;
 int sdhci_pltfm_free (struct platform_device*) ;
 struct sdhci_host* sdhci_pltfm_init (struct platform_device*,int *,int) ;
 struct sdhci_esdhc* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 scalar_t__ soc_device_match (int ) ;
 int soc_fixup_tuning ;

__attribute__((used)) static int sdhci_esdhc_probe(struct platform_device *pdev)
{
 struct sdhci_host *host;
 struct device_node *np;
 struct sdhci_pltfm_host *pltfm_host;
 struct sdhci_esdhc *esdhc;
 int ret;

 np = pdev->dev.of_node;

 if (of_property_read_bool(np, "little-endian"))
  host = sdhci_pltfm_init(pdev, &sdhci_esdhc_le_pdata,
     sizeof(struct sdhci_esdhc));
 else
  host = sdhci_pltfm_init(pdev, &sdhci_esdhc_be_pdata,
     sizeof(struct sdhci_esdhc));

 if (IS_ERR(host))
  return PTR_ERR(host);

 host->mmc_host_ops.start_signal_voltage_switch =
  esdhc_signal_voltage_switch;
 host->mmc_host_ops.execute_tuning = esdhc_execute_tuning;
 host->mmc_host_ops.hs400_prepare_ddr = esdhc_hs400_prepare_ddr;
 host->tuning_delay = 1;

 esdhc_init(pdev, host);

 sdhci_get_of_property(pdev);

 pltfm_host = sdhci_priv(host);
 esdhc = sdhci_pltfm_priv(pltfm_host);
 if (soc_device_match(soc_fixup_tuning))
  esdhc->quirk_fixup_tuning = 1;
 else
  esdhc->quirk_fixup_tuning = 0;

 if (esdhc->vendor_ver == VENDOR_V_22)
  host->quirks2 |= SDHCI_QUIRK2_HOST_NO_CMD23;

 if (esdhc->vendor_ver > VENDOR_V_22)
  host->quirks &= ~SDHCI_QUIRK_NO_BUSY_IRQ;

 if (of_find_compatible_node(((void*)0), ((void*)0), "fsl,p2020-esdhc")) {
  host->quirks2 |= SDHCI_QUIRK_RESET_AFTER_REQUEST;
  host->quirks2 |= SDHCI_QUIRK_BROKEN_TIMEOUT_VAL;
 }

 if (of_device_is_compatible(np, "fsl,p5040-esdhc") ||
     of_device_is_compatible(np, "fsl,p5020-esdhc") ||
     of_device_is_compatible(np, "fsl,p4080-esdhc") ||
     of_device_is_compatible(np, "fsl,p1020-esdhc") ||
     of_device_is_compatible(np, "fsl,t1040-esdhc"))
  host->quirks &= ~SDHCI_QUIRK_BROKEN_CARD_DETECTION;

 if (of_device_is_compatible(np, "fsl,ls1021a-esdhc"))
  host->quirks |= SDHCI_QUIRK_BROKEN_TIMEOUT_VAL;

 esdhc->quirk_ignore_data_inhibit = 0;
 if (of_device_is_compatible(np, "fsl,p2020-esdhc")) {




  host->quirks2 |= SDHCI_QUIRK2_BROKEN_HOST_CONTROL;
  esdhc->quirk_ignore_data_inhibit = 1;
 }


 ret = mmc_of_parse(host->mmc);
 if (ret)
  goto err;

 mmc_of_parse_voltage(np, &host->ocr_mask);

 ret = sdhci_add_host(host);
 if (ret)
  goto err;

 return 0;
 err:
 sdhci_pltfm_free(pdev);
 return ret;
}

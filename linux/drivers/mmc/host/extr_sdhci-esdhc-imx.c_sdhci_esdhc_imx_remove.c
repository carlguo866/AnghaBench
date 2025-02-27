
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {scalar_t__ ioaddr; } ;
struct pltfm_imx_data {int pm_qos_req; TYPE_1__* socdata; int clk_ahb; int clk_ipg; int clk_per; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int flags; } ;


 int ESDHC_FLAG_PMQOS ;
 scalar_t__ SDHCI_INT_STATUS ;
 int clk_disable_unprepare (int ) ;
 struct sdhci_host* platform_get_drvdata (struct platform_device*) ;
 int pm_qos_remove_request (int *) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int readl (scalar_t__) ;
 int sdhci_pltfm_free (struct platform_device*) ;
 struct pltfm_imx_data* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_remove_host (struct sdhci_host*,int) ;

__attribute__((used)) static int sdhci_esdhc_imx_remove(struct platform_device *pdev)
{
 struct sdhci_host *host = platform_get_drvdata(pdev);
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct pltfm_imx_data *imx_data = sdhci_pltfm_priv(pltfm_host);
 int dead = (readl(host->ioaddr + SDHCI_INT_STATUS) == 0xffffffff);

 pm_runtime_get_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);
 pm_runtime_put_noidle(&pdev->dev);

 sdhci_remove_host(host, dead);

 clk_disable_unprepare(imx_data->clk_per);
 clk_disable_unprepare(imx_data->clk_ipg);
 clk_disable_unprepare(imx_data->clk_ahb);

 if (imx_data->socdata->flags & ESDHC_FLAG_PMQOS)
  pm_qos_remove_request(&imx_data->pm_qos_req);

 sdhci_pltfm_free(pdev);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_msm_variant_info {struct sdhci_msm_offset* offset; int var_ops; int restore_dll_config; int mci_removed; } ;
struct sdhci_msm_offset {int core_pwrctl_mask; scalar_t__ core_vendor_spec_capabilities0; int core_mci_version; int core_hc_mode; scalar_t__ core_vendor_spec; } ;
struct sdhci_msm_host {int use_14lpp_dll_reset; int use_cdclp533; int pwr_irq; struct sdhci_host* bus_clk; TYPE_2__* bulk_clks; int mci_removed; struct sdhci_host* core_mem; struct sdhci_host* xo_clk; int saved_tuning_phase; struct sdhci_msm_offset* offset; int var_ops; int restore_dll_config; struct platform_device* pdev; int mmc; } ;
struct TYPE_5__ {int execute_tuning; } ;
struct sdhci_host {TYPE_1__ mmc_host_ops; scalar_t__ ioaddr; int mmc; scalar_t__ sdma_boundary; } ;
struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct clk {TYPE_1__ mmc_host_ops; scalar_t__ ioaddr; int mmc; scalar_t__ sdma_boundary; } ;
struct TYPE_6__ {struct sdhci_host* clk; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int CORE_VENDOR_SPEC_POR_VAL ;
 int CORE_VERSION_MAJOR_MASK ;
 int CORE_VERSION_MAJOR_SHIFT ;
 int CORE_VERSION_MINOR_MASK ;
 int FF_CLK_SW_RST_DIS ;
 int HC_MODE_EN ;
 int INT_MASK ;
 int INT_MAX ;
 int INVALID_TUNING_PHASE ;
 int IORESOURCE_MEM ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (struct sdhci_host*) ;
 int MSM_MMC_AUTOSUSPEND_DELAY_MS ;
 int PTR_ERR (struct sdhci_host*) ;
 int SDHCI_CAN_DO_8BIT ;
 int SDHCI_CAN_VDD_300 ;
 scalar_t__ SDHCI_CAPABILITIES ;
 scalar_t__ SDHCI_HOST_VERSION ;
 int SDHCI_VENDOR_VER_MASK ;
 int SDHCI_VENDOR_VER_SHIFT ;
 int clk_bulk_disable_unprepare (int ,TYPE_2__*) ;
 int clk_bulk_prepare_enable (int ,TYPE_2__*) ;
 int clk_disable_unprepare (struct sdhci_host*) ;
 int clk_prepare_enable (struct sdhci_host*) ;
 int clk_set_rate (struct sdhci_host*,int ) ;
 int dev_dbg (int *,char*,int,int,...) ;
 int dev_err (int *,char*,int) ;
 int dev_name (int *) ;
 int dev_warn (int *,char*,...) ;
 void* devm_clk_get (int *,char*) ;
 struct sdhci_host* devm_ioremap_resource (int *,struct resource*) ;
 int devm_request_threaded_irq (int *,int,int *,int ,int ,int ,struct sdhci_host*) ;
 int mb () ;
 int mmc_of_parse (int ) ;
 int msm_host_readl (struct sdhci_msm_host*,struct sdhci_host*,int ) ;
 int msm_host_writel (struct sdhci_msm_host*,int,struct sdhci_host*,int ) ;
 struct sdhci_msm_variant_info* of_device_get_match_data (int *) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_get_noresume (int *) ;
 int pm_runtime_mark_last_busy (int *) ;
 int pm_runtime_put_autosuspend (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int pm_runtime_set_active (int *) ;
 int pm_runtime_set_autosuspend_delay (int *,int ) ;
 int pm_runtime_set_suspended (int *) ;
 int pm_runtime_use_autosuspend (int *) ;
 int readl_relaxed (scalar_t__) ;
 int readw_relaxed (scalar_t__) ;
 int sdhci_add_host (struct sdhci_host*) ;
 int sdhci_get_of_property (struct platform_device*) ;
 int sdhci_msm_execute_tuning ;
 int sdhci_msm_handle_pwr_irq (struct sdhci_host*,int ) ;
 int sdhci_msm_init_pwr_irq_wait (struct sdhci_msm_host*) ;
 int sdhci_msm_pdata ;
 int sdhci_msm_pwr_irq ;
 int sdhci_msm_set_regulator_caps (struct sdhci_msm_host*) ;
 int sdhci_pltfm_free (struct platform_device*) ;
 struct sdhci_host* sdhci_pltfm_init (struct platform_device*,int *,int) ;
 struct sdhci_msm_host* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int sdhci_msm_probe(struct platform_device *pdev)
{
 struct sdhci_host *host;
 struct sdhci_pltfm_host *pltfm_host;
 struct sdhci_msm_host *msm_host;
 struct resource *core_memres;
 struct clk *clk;
 int ret;
 u16 host_version, core_minor;
 u32 core_version, config;
 u8 core_major;
 const struct sdhci_msm_offset *msm_offset;
 const struct sdhci_msm_variant_info *var_info;

 host = sdhci_pltfm_init(pdev, &sdhci_msm_pdata, sizeof(*msm_host));
 if (IS_ERR(host))
  return PTR_ERR(host);

 host->sdma_boundary = 0;
 pltfm_host = sdhci_priv(host);
 msm_host = sdhci_pltfm_priv(pltfm_host);
 msm_host->mmc = host->mmc;
 msm_host->pdev = pdev;

 ret = mmc_of_parse(host->mmc);
 if (ret)
  goto pltfm_free;





 var_info = of_device_get_match_data(&pdev->dev);

 msm_host->mci_removed = var_info->mci_removed;
 msm_host->restore_dll_config = var_info->restore_dll_config;
 msm_host->var_ops = var_info->var_ops;
 msm_host->offset = var_info->offset;

 msm_offset = msm_host->offset;

 sdhci_get_of_property(pdev);

 msm_host->saved_tuning_phase = INVALID_TUNING_PHASE;


 msm_host->bus_clk = devm_clk_get(&pdev->dev, "bus");
 if (!IS_ERR(msm_host->bus_clk)) {

  ret = clk_set_rate(msm_host->bus_clk, INT_MAX);
  if (ret)
   goto pltfm_free;
  ret = clk_prepare_enable(msm_host->bus_clk);
  if (ret)
   goto pltfm_free;
 }


 clk = devm_clk_get(&pdev->dev, "iface");
 if (IS_ERR(clk)) {
  ret = PTR_ERR(clk);
  dev_err(&pdev->dev, "Peripheral clk setup failed (%d)\n", ret);
  goto bus_clk_disable;
 }
 msm_host->bulk_clks[1].clk = clk;


 clk = devm_clk_get(&pdev->dev, "core");
 if (IS_ERR(clk)) {
  ret = PTR_ERR(clk);
  dev_err(&pdev->dev, "SDC MMC clk setup failed (%d)\n", ret);
  goto bus_clk_disable;
 }
 msm_host->bulk_clks[0].clk = clk;


 ret = clk_set_rate(clk, INT_MAX);
 if (ret)
  dev_warn(&pdev->dev, "core clock boost failed\n");

 clk = devm_clk_get(&pdev->dev, "cal");
 if (IS_ERR(clk))
  clk = ((void*)0);
 msm_host->bulk_clks[2].clk = clk;

 clk = devm_clk_get(&pdev->dev, "sleep");
 if (IS_ERR(clk))
  clk = ((void*)0);
 msm_host->bulk_clks[3].clk = clk;

 ret = clk_bulk_prepare_enable(ARRAY_SIZE(msm_host->bulk_clks),
          msm_host->bulk_clks);
 if (ret)
  goto bus_clk_disable;





 msm_host->xo_clk = devm_clk_get(&pdev->dev, "xo");
 if (IS_ERR(msm_host->xo_clk)) {
  ret = PTR_ERR(msm_host->xo_clk);
  dev_warn(&pdev->dev, "TCXO clk not present (%d)\n", ret);
 }

 if (!msm_host->mci_removed) {
  core_memres = platform_get_resource(pdev, IORESOURCE_MEM, 1);
  msm_host->core_mem = devm_ioremap_resource(&pdev->dev,
    core_memres);

  if (IS_ERR(msm_host->core_mem)) {
   ret = PTR_ERR(msm_host->core_mem);
   goto clk_disable;
  }
 }


 writel_relaxed(CORE_VENDOR_SPEC_POR_VAL,
   host->ioaddr + msm_offset->core_vendor_spec);

 if (!msm_host->mci_removed) {

  msm_host_writel(msm_host, HC_MODE_EN, host,
    msm_offset->core_hc_mode);
  config = msm_host_readl(msm_host, host,
    msm_offset->core_hc_mode);
  config |= FF_CLK_SW_RST_DIS;
  msm_host_writel(msm_host, config, host,
    msm_offset->core_hc_mode);
 }

 host_version = readw_relaxed((host->ioaddr + SDHCI_HOST_VERSION));
 dev_dbg(&pdev->dev, "Host Version: 0x%x Vendor Version 0x%x\n",
  host_version, ((host_version & SDHCI_VENDOR_VER_MASK) >>
          SDHCI_VENDOR_VER_SHIFT));

 core_version = msm_host_readl(msm_host, host,
   msm_offset->core_mci_version);
 core_major = (core_version & CORE_VERSION_MAJOR_MASK) >>
        CORE_VERSION_MAJOR_SHIFT;
 core_minor = core_version & CORE_VERSION_MINOR_MASK;
 dev_dbg(&pdev->dev, "MCI Version: 0x%08x, major: 0x%04x, minor: 0x%02x\n",
  core_version, core_major, core_minor);

 if (core_major == 1 && core_minor >= 0x42)
  msm_host->use_14lpp_dll_reset = 1;





 if (core_major == 1 && core_minor < 0x34)
  msm_host->use_cdclp533 = 1;





 if (core_major >= 1 && core_minor != 0x11 && core_minor != 0x12) {
  config = readl_relaxed(host->ioaddr + SDHCI_CAPABILITIES);
  config |= SDHCI_CAN_VDD_300 | SDHCI_CAN_DO_8BIT;
  writel_relaxed(config, host->ioaddr +
    msm_offset->core_vendor_spec_capabilities0);
 }
 sdhci_msm_handle_pwr_irq(host, 0);





 mb();


 msm_host->pwr_irq = platform_get_irq_byname(pdev, "pwr_irq");
 if (msm_host->pwr_irq < 0) {
  ret = msm_host->pwr_irq;
  goto clk_disable;
 }

 sdhci_msm_init_pwr_irq_wait(msm_host);

 msm_host_writel(msm_host, INT_MASK, host,
  msm_offset->core_pwrctl_mask);

 ret = devm_request_threaded_irq(&pdev->dev, msm_host->pwr_irq, ((void*)0),
     sdhci_msm_pwr_irq, IRQF_ONESHOT,
     dev_name(&pdev->dev), host);
 if (ret) {
  dev_err(&pdev->dev, "Request IRQ failed (%d)\n", ret);
  goto clk_disable;
 }

 pm_runtime_get_noresume(&pdev->dev);
 pm_runtime_set_active(&pdev->dev);
 pm_runtime_enable(&pdev->dev);
 pm_runtime_set_autosuspend_delay(&pdev->dev,
      MSM_MMC_AUTOSUSPEND_DELAY_MS);
 pm_runtime_use_autosuspend(&pdev->dev);

 host->mmc_host_ops.execute_tuning = sdhci_msm_execute_tuning;
 ret = sdhci_add_host(host);
 if (ret)
  goto pm_runtime_disable;
 sdhci_msm_set_regulator_caps(msm_host);

 pm_runtime_mark_last_busy(&pdev->dev);
 pm_runtime_put_autosuspend(&pdev->dev);

 return 0;

pm_runtime_disable:
 pm_runtime_disable(&pdev->dev);
 pm_runtime_set_suspended(&pdev->dev);
 pm_runtime_put_noidle(&pdev->dev);
clk_disable:
 clk_bulk_disable_unprepare(ARRAY_SIZE(msm_host->bulk_clks),
       msm_host->bulk_clks);
bus_clk_disable:
 if (!IS_ERR(msm_host->bus_clk))
  clk_disable_unprepare(msm_host->bus_clk);
pltfm_free:
 sdhci_pltfm_free(pdev);
 return ret;
}

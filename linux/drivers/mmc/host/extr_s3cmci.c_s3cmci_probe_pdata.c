
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct s3cmci_host {struct mmc_host* mmc; int is2440; struct platform_device* pdev; } ;
struct s3c24xx_mci_pdata {scalar_t__ wprotect_invert; scalar_t__ no_detect; scalar_t__ no_wprotect; } ;
struct TYPE_5__ {struct s3c24xx_mci_pdata* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct mmc_host {int caps2; int caps; } ;
struct TYPE_4__ {int driver_data; } ;


 int ENOENT ;
 int MMC_CAP2_NO_WRITE_PROTECT ;
 int MMC_CAP2_RO_ACTIVE_HIGH ;
 int MMC_CAP_NEEDS_POLL ;
 int S3C2410_GPE (int) ;
 int dev_err (TYPE_2__*,char*,int) ;
 int dev_name (TYPE_2__*) ;
 int gpio_free (int) ;
 int gpio_request (int,int ) ;
 int mmc_gpiod_request_cd (struct mmc_host*,char*,int ,int,int ,int *) ;
 int mmc_gpiod_request_ro (struct mmc_host*,char*,int ,int ,int *) ;
 TYPE_1__* platform_get_device_id (struct platform_device*) ;
 struct s3c24xx_mci_pdata s3cmci_def_pdata ;

__attribute__((used)) static int s3cmci_probe_pdata(struct s3cmci_host *host)
{
 struct platform_device *pdev = host->pdev;
 struct mmc_host *mmc = host->mmc;
 struct s3c24xx_mci_pdata *pdata;
 int i, ret;

 host->is2440 = platform_get_device_id(pdev)->driver_data;

 for (i = S3C2410_GPE(5); i <= S3C2410_GPE(10); i++) {
  ret = gpio_request(i, dev_name(&pdev->dev));
  if (ret) {
   dev_err(&pdev->dev, "failed to get gpio %d\n", i);

   for (i--; i >= S3C2410_GPE(5); i--)
    gpio_free(i);

   return ret;
  }
 }

 if (!pdev->dev.platform_data)
  pdev->dev.platform_data = &s3cmci_def_pdata;

 pdata = pdev->dev.platform_data;

 if (pdata->no_wprotect)
  mmc->caps2 |= MMC_CAP2_NO_WRITE_PROTECT;

 if (pdata->no_detect)
  mmc->caps |= MMC_CAP_NEEDS_POLL;

 if (pdata->wprotect_invert)
  mmc->caps2 |= MMC_CAP2_RO_ACTIVE_HIGH;


 ret = mmc_gpiod_request_cd(mmc, "cd", 0, 0, 0, ((void*)0));
 if (ret != -ENOENT) {
  dev_err(&pdev->dev, "error requesting GPIO for CD %d\n",
   ret);
  return ret;
 }

 ret = mmc_gpiod_request_ro(host->mmc, "wp", 0, 0, ((void*)0));
 if (ret != -ENOENT) {
  dev_err(&pdev->dev, "error requesting GPIO for WP %d\n",
   ret);
  return ret;
 }

 return 0;
}

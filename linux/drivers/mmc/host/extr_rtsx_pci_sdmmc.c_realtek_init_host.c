
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct realtek_pci_sdmmc {struct mmc_host* mmc; } ;
struct mmc_host {int f_min; int f_max; int ocr_avail; int caps; int caps2; int max_current_330; int max_current_180; int max_segs; int max_seg_size; int max_blk_size; int max_blk_count; int max_req_size; int * ops; } ;


 int MMC_CAP2_FULL_PWR_CYCLE ;
 int MMC_CAP2_NO_PRESCAN_POWERUP ;
 int MMC_CAP_4_BIT_DATA ;
 int MMC_CAP_BUS_WIDTH_TEST ;
 int MMC_CAP_ERASE ;
 int MMC_CAP_MMC_HIGHSPEED ;
 int MMC_CAP_SD_HIGHSPEED ;
 int MMC_CAP_UHS_SDR12 ;
 int MMC_CAP_UHS_SDR25 ;
 int MMC_VDD_165_195 ;
 int MMC_VDD_32_33 ;
 int MMC_VDD_33_34 ;
 int init_extra_caps (struct realtek_pci_sdmmc*) ;
 int realtek_pci_sdmmc_ops ;

__attribute__((used)) static void realtek_init_host(struct realtek_pci_sdmmc *host)
{
 struct mmc_host *mmc = host->mmc;

 mmc->f_min = 250000;
 mmc->f_max = 208000000;
 mmc->ocr_avail = MMC_VDD_32_33 | MMC_VDD_33_34 | MMC_VDD_165_195;
 mmc->caps = MMC_CAP_4_BIT_DATA | MMC_CAP_SD_HIGHSPEED |
  MMC_CAP_MMC_HIGHSPEED | MMC_CAP_BUS_WIDTH_TEST |
  MMC_CAP_UHS_SDR12 | MMC_CAP_UHS_SDR25 | MMC_CAP_ERASE;
 mmc->caps2 = MMC_CAP2_NO_PRESCAN_POWERUP | MMC_CAP2_FULL_PWR_CYCLE;
 mmc->max_current_330 = 400;
 mmc->max_current_180 = 800;
 mmc->ops = &realtek_pci_sdmmc_ops;

 init_extra_caps(host);

 mmc->max_segs = 256;
 mmc->max_seg_size = 65536;
 mmc->max_blk_size = 512;
 mmc->max_blk_count = 65535;
 mmc->max_req_size = 524288;
}

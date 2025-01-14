
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int dummy; } ;
struct realtek_pci_sdmmc {scalar_t__ power_state; struct rtsx_pcr* pcr; } ;


 int CARD_CLK_EN ;
 int CARD_OE ;
 int CARD_SELECT ;
 int CARD_SHARE_48_SD ;
 int CARD_SHARE_MASK ;
 int CARD_SHARE_MODE ;
 int RTSX_SD_CARD ;
 scalar_t__ SDMMC_POWER_ON ;
 int SD_CLK_EN ;
 int SD_MOD_SEL ;
 int SD_OUTPUT_EN ;
 int WRITE_REG_CMD ;
 int rtsx_pci_add_cmd (struct rtsx_pcr*,int ,int ,int,int) ;
 int rtsx_pci_card_power_on (struct rtsx_pcr*,int ) ;
 int rtsx_pci_card_pull_ctl_enable (struct rtsx_pcr*,int ) ;
 int rtsx_pci_init_cmd (struct rtsx_pcr*) ;
 int rtsx_pci_send_cmd (struct rtsx_pcr*,int) ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int ,int ) ;

__attribute__((used)) static int sd_power_on(struct realtek_pci_sdmmc *host)
{
 struct rtsx_pcr *pcr = host->pcr;
 int err;

 if (host->power_state == SDMMC_POWER_ON)
  return 0;

 rtsx_pci_init_cmd(pcr);
 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, CARD_SELECT, 0x07, SD_MOD_SEL);
 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, CARD_SHARE_MODE,
   CARD_SHARE_MASK, CARD_SHARE_48_SD);
 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, CARD_CLK_EN,
   SD_CLK_EN, SD_CLK_EN);
 err = rtsx_pci_send_cmd(pcr, 100);
 if (err < 0)
  return err;

 err = rtsx_pci_card_pull_ctl_enable(pcr, RTSX_SD_CARD);
 if (err < 0)
  return err;

 err = rtsx_pci_card_power_on(pcr, RTSX_SD_CARD);
 if (err < 0)
  return err;

 err = rtsx_pci_write_register(pcr, CARD_OE, SD_OUTPUT_EN, SD_OUTPUT_EN);
 if (err < 0)
  return err;

 host->power_state = SDMMC_POWER_ON;
 return 0;
}

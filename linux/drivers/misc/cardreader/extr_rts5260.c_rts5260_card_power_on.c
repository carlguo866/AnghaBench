
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_cr_option {scalar_t__ ocp_en; } ;
struct rtsx_pcr {int extra_caps; struct rtsx_cr_option option; } ;


 int CARD_STOP ;
 int DV331812_POWERON ;
 int DV331812_VDD1 ;
 int EN_INFINITE_MODE ;
 int EXTRA_CAPS_SD_SDR104 ;
 int EXTRA_CAPS_SD_SDR50 ;
 int LDO_CONFIG2 ;
 int LDO_POW_SDVDD1_MASK ;
 int LDO_POW_SDVDD1_ON ;
 int LDO_VCC_CFG0 ;
 int LDO_VCC_CFG1 ;
 int REG_PRE_RW_MODE ;
 int REG_SD_STOP_SDCLK_CFG ;
 int RTS5260_DVCC_33 ;
 int RTS5260_DVCC_TUNE_MASK ;
 int SD20_RX_POS_EDGE ;
 int SD30_CLK_END_EN ;
 int SD30_CLK_STOP_CFG0 ;
 int SD30_CLK_STOP_CFG1 ;
 int SD30_CLK_STOP_CFG_EN ;
 int SD_20_MODE ;
 int SD_CFG1 ;
 int SD_CFG3 ;
 int SD_CLK_DIVIDE_128 ;
 int SD_CLR_ERR ;
 int SD_PUSH_POINT_CTL ;
 int SD_SAMPLE_POINT_CTL ;
 int SD_STOP ;
 int msleep (int) ;
 int rtsx_pci_enable_ocp (struct rtsx_pcr*) ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int,int) ;
 int sd_set_sample_push_timing_sd30 (struct rtsx_pcr*) ;

__attribute__((used)) static int rts5260_card_power_on(struct rtsx_pcr *pcr, int card)
{
 int err = 0;
 struct rtsx_cr_option *option = &pcr->option;

 if (option->ocp_en)
  rtsx_pci_enable_ocp(pcr);


 rtsx_pci_write_register(pcr, LDO_CONFIG2, DV331812_VDD1, DV331812_VDD1);
 rtsx_pci_write_register(pcr, LDO_VCC_CFG0,
    RTS5260_DVCC_TUNE_MASK, RTS5260_DVCC_33);

 rtsx_pci_write_register(pcr, LDO_VCC_CFG1, LDO_POW_SDVDD1_MASK,
   LDO_POW_SDVDD1_ON);

 rtsx_pci_write_register(pcr, LDO_CONFIG2,
    DV331812_POWERON, DV331812_POWERON);
 msleep(20);

 if (pcr->extra_caps & EXTRA_CAPS_SD_SDR50 ||
     pcr->extra_caps & EXTRA_CAPS_SD_SDR104)
  sd_set_sample_push_timing_sd30(pcr);


 rtsx_pci_write_register(pcr, SD_CFG1, 0xFF,
    SD_CLK_DIVIDE_128 | SD_20_MODE);

 rtsx_pci_write_register(pcr, SD_SAMPLE_POINT_CTL,
    0xFF, SD20_RX_POS_EDGE);
 rtsx_pci_write_register(pcr, SD_PUSH_POINT_CTL, 0xFF, 0);
 rtsx_pci_write_register(pcr, CARD_STOP, SD_STOP | SD_CLR_ERR,
    SD_STOP | SD_CLR_ERR);


 rtsx_pci_write_register(pcr, SD_CFG3, SD30_CLK_END_EN, 0);
 rtsx_pci_write_register(pcr, REG_SD_STOP_SDCLK_CFG,
   SD30_CLK_STOP_CFG_EN | SD30_CLK_STOP_CFG1 |
   SD30_CLK_STOP_CFG0, 0);

 rtsx_pci_write_register(pcr, REG_PRE_RW_MODE, EN_INFINITE_MODE, 0);

 return err;
}

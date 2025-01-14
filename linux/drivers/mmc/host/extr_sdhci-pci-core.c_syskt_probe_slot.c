
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sdhci_pci_slot {TYPE_3__* host; TYPE_2__* chip; } ;
struct TYPE_6__ {scalar_t__ ioaddr; int quirks; } ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 int ENODEV ;
 int SDHCI_QUIRK_FORCE_DMA ;
 scalar_t__ SYSKT_BOARD_REV ;
 scalar_t__ SYSKT_CHIP_REV ;
 int SYSKT_POWER_330 ;
 scalar_t__ SYSKT_POWER_CMD ;
 scalar_t__ SYSKT_POWER_DATA ;
 int SYSKT_POWER_START ;
 scalar_t__ SYSKT_POWER_STATUS ;
 int SYSKT_POWER_STATUS_OK ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int,int,int,int) ;
 int readb (scalar_t__) ;
 int readw (scalar_t__) ;
 int udelay (int) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static int syskt_probe_slot(struct sdhci_pci_slot *slot)
{
 int tm, ps;

 u8 board_rev = readb(slot->host->ioaddr + SYSKT_BOARD_REV);
 u8 chip_rev = readb(slot->host->ioaddr + SYSKT_CHIP_REV);
 dev_info(&slot->chip->pdev->dev, "SysKonnect CardBus2SDIO, "
      "board rev %d.%d, chip rev %d.%d\n",
      board_rev >> 4, board_rev & 0xf,
      chip_rev >> 4, chip_rev & 0xf);
 if (chip_rev >= 0x20)
  slot->host->quirks |= SDHCI_QUIRK_FORCE_DMA;

 writeb(SYSKT_POWER_330, slot->host->ioaddr + SYSKT_POWER_DATA);
 writeb(SYSKT_POWER_START, slot->host->ioaddr + SYSKT_POWER_CMD);
 udelay(50);
 tm = 10;
 do {
  ps = readw(slot->host->ioaddr + SYSKT_POWER_STATUS);
  if (ps & SYSKT_POWER_STATUS_OK)
   break;
  udelay(100);
 } while (--tm);
 if (!tm) {
  dev_err(&slot->chip->pdev->dev,
   "power regulator never stabilized");
  writeb(0, slot->host->ioaddr + SYSKT_POWER_CMD);
  return -ENODEV;
 }

 return 0;
}

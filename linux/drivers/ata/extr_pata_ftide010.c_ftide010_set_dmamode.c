
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ftide010 {int base; int dev; } ;
struct ata_port {struct ata_device* private_data; TYPE_1__* host; } ;
struct ata_device {int dma_mode; int devno; } ;
struct TYPE_2__ {struct ftide010* private_data; } ;


 int FTIDE010_CLK_MOD ;
 int FTIDE010_CLK_MOD_DEV0_CLK_SEL ;
 int FTIDE010_CLK_MOD_DEV0_UDMA_EN ;
 int FTIDE010_CLK_MOD_DEV1_CLK_SEL ;
 int FTIDE010_CLK_MOD_DEV1_UDMA_EN ;
 int FTIDE010_MWDMA_TIMING ;
 int FTIDE010_UDMA_TIMING0 ;
 int FTIDE010_UDMA_TIMING_MODE_56 ;
 int XFER_MW_DMA_0 ;
 int XFER_UDMA_0 ;
 int dev_dbg (int ,char*,int,int) ;
 int* mwdma_50_active_time ;
 int* mwdma_50_recovery_time ;
 int* mwdma_66_active_time ;
 int* mwdma_66_recovery_time ;
 int readb (int) ;
 scalar_t__* set_mdma_66_mhz ;
 scalar_t__* set_udma_66_mhz ;
 int* udma_50_hold_time ;
 int* udma_50_setup_time ;
 int* udma_66_hold_time ;
 int* udma_66_setup_time ;
 int writeb (int,int) ;

__attribute__((used)) static void ftide010_set_dmamode(struct ata_port *ap, struct ata_device *adev)
{
 struct ftide010 *ftide = ap->host->private_data;
 u8 speed = adev->dma_mode;
 u8 devno = adev->devno & 1;
 u8 udma_en_mask;
 u8 f66m_en_mask;
 u8 clkreg;
 u8 timreg;
 u8 i;


 if (!devno) {
  udma_en_mask = FTIDE010_CLK_MOD_DEV0_UDMA_EN;
  f66m_en_mask = FTIDE010_CLK_MOD_DEV0_CLK_SEL;
 } else {
  udma_en_mask = FTIDE010_CLK_MOD_DEV1_UDMA_EN;
  f66m_en_mask = FTIDE010_CLK_MOD_DEV1_CLK_SEL;
 }

 clkreg = readb(ftide->base + FTIDE010_CLK_MOD);
 clkreg &= ~udma_en_mask;
 clkreg &= ~f66m_en_mask;

 if (speed & XFER_UDMA_0) {
  i = speed & ~XFER_UDMA_0;
  dev_dbg(ftide->dev, "set UDMA mode %02x, index %d\n",
   speed, i);

  clkreg |= udma_en_mask;
  if (set_udma_66_mhz[i]) {
   clkreg |= f66m_en_mask;
   timreg = udma_66_setup_time[i] << 4 |
    udma_66_hold_time[i];
  } else {
   timreg = udma_50_setup_time[i] << 4 |
    udma_50_hold_time[i];
  }


  if (i >= 5)
   timreg |= FTIDE010_UDMA_TIMING_MODE_56;

  dev_dbg(ftide->dev, "UDMA write clkreg = %02x, timreg = %02x\n",
   clkreg, timreg);

  writeb(clkreg, ftide->base + FTIDE010_CLK_MOD);
  writeb(timreg, ftide->base + FTIDE010_UDMA_TIMING0 + devno);
 } else {
  i = speed & ~XFER_MW_DMA_0;
  dev_dbg(ftide->dev, "set MWDMA mode %02x, index %d\n",
   speed, i);

  if (set_mdma_66_mhz[i]) {
   clkreg |= f66m_en_mask;
   timreg = mwdma_66_active_time[i] << 4 |
    mwdma_66_recovery_time[i];
  } else {
   timreg = mwdma_50_active_time[i] << 4 |
    mwdma_50_recovery_time[i];
  }
  dev_dbg(ftide->dev,
   "MWDMA write clkreg = %02x, timreg = %02x\n",
   clkreg, timreg);

  writeb(clkreg, ftide->base + FTIDE010_CLK_MOD);
  writeb(timreg, ftide->base + FTIDE010_MWDMA_TIMING);
 }






 ap->private_data = adev;

 return;
}

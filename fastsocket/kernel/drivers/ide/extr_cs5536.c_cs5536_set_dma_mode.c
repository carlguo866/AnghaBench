
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_7__ {int dn; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_6__ {int dev; } ;


 int ETC ;
 int IDE_D0_SHIFT ;
 int IDE_D1_SHIFT ;
 int IDE_DRV_MASK ;
 int IDE_ETC_UDMA_MASK ;
 int const XFER_MW_DMA_0 ;
 int const XFER_UDMA_0 ;
 int cs5536_read (struct pci_dev*,int ,int*) ;
 int cs5536_write (struct pci_dev*,int ,int) ;
 scalar_t__ ide_get_drivedata (TYPE_2__*) ;
 int ide_set_drivedata (TYPE_2__*,void*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void cs5536_set_dma_mode(ide_drive_t *drive, const u8 mode)
{
 static const u8 udma_timings[6] = {
  0xc2, 0xc1, 0xc0, 0xc4, 0xc5, 0xc6,
 };

 static const u8 mwdma_timings[3] = {
  0x67, 0x21, 0x20,
 };

 struct pci_dev *pdev = to_pci_dev(drive->hwif->dev);
 int dshift = (drive->dn & 1) ? IDE_D1_SHIFT : IDE_D0_SHIFT;
 unsigned long timings = (unsigned long)ide_get_drivedata(drive);
 u32 etc;

 cs5536_read(pdev, ETC, &etc);

 if (mode >= XFER_UDMA_0) {
  etc &= ~(IDE_DRV_MASK << dshift);
  etc |= udma_timings[mode - XFER_UDMA_0] << dshift;
 } else {
  etc &= ~(IDE_ETC_UDMA_MASK << dshift);
  timings &= IDE_DRV_MASK;
  timings |= mwdma_timings[mode - XFER_MW_DMA_0] << 8;
  ide_set_drivedata(drive, (void *)timings);
 }

 cs5536_write(pdev, ETC, etc);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {scalar_t__ dma_base; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_7__ {TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int ATA_DMA_ACTIVE ;
 scalar_t__ ATA_DMA_STATUS ;
 int hpt370_irq_timeout (TYPE_2__*) ;
 int ide_dma_end (TYPE_2__*) ;
 int inb (scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int hpt370_dma_end(ide_drive_t *drive)
{
 ide_hwif_t *hwif = drive->hwif;
 u8 dma_stat = inb(hwif->dma_base + ATA_DMA_STATUS);

 if (dma_stat & ATA_DMA_ACTIVE) {

  udelay(20);
  dma_stat = inb(hwif->dma_base + ATA_DMA_STATUS);
  if (dma_stat & ATA_DMA_ACTIVE)
   hpt370_irq_timeout(drive);
 }
 return ide_dma_end(drive);
}

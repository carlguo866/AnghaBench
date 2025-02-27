
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct pci_dev {int dummy; } ;
struct ide_timing {int udma; } ;
struct TYPE_8__ {scalar_t__ ultra_mask; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_9__ {scalar_t__ dma_mode; scalar_t__ const pio_mode; int dn; } ;
typedef TYPE_2__ ide_drive_t ;


 scalar_t__ ATA_UDMA2 ;
 int IDE_TIMING_8BIT ;
 scalar_t__ const XFER_UDMA_5 ;
 scalar_t__ const XFER_UDMA_6 ;
 int amd_clock ;
 int amd_set_speed (struct pci_dev*,int ,scalar_t__,struct ide_timing*) ;
 TYPE_2__* ide_get_pair_dev (TYPE_2__*) ;
 int ide_timing_compute (TYPE_2__*,scalar_t__ const,struct ide_timing*,int,int) ;
 int ide_timing_merge (struct ide_timing*,struct ide_timing*,struct ide_timing*,int ) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void amd_set_drive(ide_hwif_t *hwif, ide_drive_t *drive)
{
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 ide_drive_t *peer = ide_get_pair_dev(drive);
 struct ide_timing t, p;
 int T, UT;
 u8 udma_mask = hwif->ultra_mask;
 const u8 speed = drive->dma_mode;

 T = 1000000000 / amd_clock;
 UT = (udma_mask == ATA_UDMA2) ? T : (T / 2);

 ide_timing_compute(drive, speed, &t, T, UT);

 if (peer) {
  ide_timing_compute(peer, peer->pio_mode, &p, T, UT);
  ide_timing_merge(&p, &t, &t, IDE_TIMING_8BIT);
 }

 if (speed == XFER_UDMA_5 && amd_clock <= 33333) t.udma = 1;
 if (speed == XFER_UDMA_6 && amd_clock <= 33333) t.udma = 15;

 amd_set_speed(dev, drive->dn, udma_mask, &t);
}

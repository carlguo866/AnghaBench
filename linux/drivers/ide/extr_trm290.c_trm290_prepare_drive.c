
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int select_data; int channel; scalar_t__ config_data; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_5__ {int dev_flags; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int IDE_DFLAG_PRESENT ;
 int inw (scalar_t__) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int outb (int,scalar_t__) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static void trm290_prepare_drive (ide_drive_t *drive, unsigned int use_dma)
{
 ide_hwif_t *hwif = drive->hwif;
 u16 reg = 0;
 unsigned long flags;


 reg = use_dma ? (0x21 | 0x82) : (0x21 & ~0x82);

 local_irq_save(flags);

 if (reg != hwif->select_data) {
  hwif->select_data = reg;

  outb(0x51 | (hwif->channel << 3), hwif->config_data + 1);
  outw(reg & 0xff, hwif->config_data);
 }


 if (drive->dev_flags & IDE_DFLAG_PRESENT) {
  reg = inw(hwif->config_data + 3);
  reg &= 0x13;
  reg &= ~(1 << hwif->channel);
  outw(reg, hwif->config_data + 3);
 }

 local_irq_restore(flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ide_cmd {int tf_flags; } ;
struct TYPE_5__ {unsigned int dmatable_dma; scalar_t__ dma_base; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_6__ {TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int IDE_TFLAG_WRITE ;
 unsigned int ide_build_dmatable (TYPE_2__*,struct ide_cmd*) ;
 int outl (unsigned int,scalar_t__) ;
 int outw (unsigned int,scalar_t__) ;

__attribute__((used)) static int trm290_dma_setup(ide_drive_t *drive, struct ide_cmd *cmd)
{
 ide_hwif_t *hwif = drive->hwif;
 unsigned int count, rw = (cmd->tf_flags & IDE_TFLAG_WRITE) ? 1 : 2;

 count = ide_build_dmatable(drive, cmd);
 if (count == 0)

  return 1;

 outl(hwif->dmatable_dma | rw, hwif->dma_base);

 outw(count * 2 - 1, hwif->dma_base + 2);

 return 0;
}

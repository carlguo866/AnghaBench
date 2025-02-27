
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ata_pci_controller {TYPE_1__* chip; } ;
struct ata_channel {int unit; } ;
typedef int device_t ;
struct TYPE_2__ {int cfg1; int max_dma; } ;


 int AMD_CABLE ;
 int ATA_MODE_MASK ;
 int ATA_PIO4 ;
 int ATA_UDMA0 ;
 int ATA_UDMA2 ;
 scalar_t__ ata_dma_check_80pin ;
 size_t ata_mode2idx (int) ;
 int ata_print_cable (int ,char*) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;
 int min (int,int ) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int const,int) ;

__attribute__((used)) static int
ata_amd_setmode(device_t dev, int target, int mode)
{
 device_t parent = device_get_parent(dev);
 struct ata_pci_controller *ctlr = device_get_softc(parent);
 struct ata_channel *ch = device_get_softc(dev);
        int devno = (ch->unit << 1) + target;
 int piomode;
 static const uint8_t timings[] =
     { 0xa8, 0x65, 0x42, 0x22, 0x20, 0xa8, 0x22, 0x20 };
 static const uint8_t modes[] =
     { 0xc2, 0xc1, 0xc0, 0xc4, 0xc5, 0xc6, 0xc7 };
 int reg = 0x53 - devno;

 mode = min(mode, ctlr->chip->max_dma);
 if (ctlr->chip->cfg1 & AMD_CABLE) {
  if (ata_dma_check_80pin && mode > ATA_UDMA2 &&
      !(pci_read_config(parent, 0x42, 1) & (1 << devno))) {
   ata_print_cable(dev, "controller");
   mode = ATA_UDMA2;
  }
 }

 if (mode >= ATA_UDMA0) {
     pci_write_config(parent, reg, modes[mode & ATA_MODE_MASK], 1);
     piomode = ATA_PIO4;
 } else {
     pci_write_config(parent, reg, 0x8b, 1);
     piomode = mode;
 }

 pci_write_config(parent, reg - 0x08, timings[ata_mode2idx(piomode)], 1);
 return (mode);
}

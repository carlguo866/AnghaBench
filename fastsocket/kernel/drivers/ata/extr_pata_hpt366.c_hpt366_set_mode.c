
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct hpt_clock {int xfer_mode; int timing; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int devno; } ;
struct TYPE_2__ {int dev; struct hpt_clock* private_data; } ;


 int BUG () ;
 int XFER_MW_DMA_0 ;
 int XFER_UDMA_0 ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void hpt366_set_mode(struct ata_port *ap, struct ata_device *adev,
       u8 mode)
{
 struct hpt_clock *clocks = ap->host->private_data;
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 u32 addr1 = 0x40 + 4 * (adev->devno + 2 * ap->port_no);
 u32 addr2 = 0x51 + 4 * ap->port_no;
 u32 mask, reg;
 u8 fast;


 pci_read_config_byte(pdev, addr2, &fast);
 if (fast & 0x80) {
  fast &= ~0x80;
  pci_write_config_byte(pdev, addr2, fast);
 }


 if (mode < XFER_MW_DMA_0)
  mask = 0xc1f8ffff;
 else if (mode < XFER_UDMA_0)
  mask = 0x303800ff;
 else
  mask = 0x30070000;

 while (clocks->xfer_mode) {
  if (clocks->xfer_mode == mode)
   break;
  clocks++;
 }
 if (!clocks->xfer_mode)
  BUG();






 pci_read_config_dword(pdev, addr1, &reg);
 reg = ((reg & ~mask) | (clocks->timing & mask)) & ~0xc0000000;
 pci_write_config_dword(pdev, addr1, reg);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int devfn; TYPE_1__* bus; } ;
struct TYPE_2__ {unsigned char number; } ;


 int PCI_SLOT (int ) ;
 int TB0287_PCI_SLOT_IRQ ;
 int TB0287_RTL8110_IRQ ;
 int TB0287_SIL680A_IRQ ;
 int TB0287_SM501_IRQ ;

int pcibios_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
{
 unsigned char bus;
 int irq = -1;

 bus = dev->bus->number;
 if (bus == 0) {
  switch (slot) {
  case 16:
   irq = TB0287_SM501_IRQ;
   break;
  case 17:
   irq = TB0287_SIL680A_IRQ;
   break;
  default:
   break;
  }
 } else if (bus == 1) {
  switch (PCI_SLOT(dev->devfn)) {
  case 0:
   irq = TB0287_PCI_SLOT_IRQ;
   break;
  case 2:
  case 3:
   irq = TB0287_RTL8110_IRQ;
   break;
  default:
   break;
  }
 } else if (bus > 1) {
  irq = TB0287_PCI_SLOT_IRQ;
 }

 return irq;
}

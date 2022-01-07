
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int devfn; TYPE_1__* bus; } ;
struct TYPE_2__ {scalar_t__ number; struct pci_dev* self; } ;


 int IRQ_INTA ;
 int IRQ_P2INTA ;
 void* PCI_SLOT (int ) ;
 int panic (char*) ;
 int pci_swizzle_interrupt_pin (struct pci_dev const*,int) ;

int pcibios_map_platform_irq(const struct pci_dev *dev, u8 slot, u8 pin)
{
 int result = -1;
 struct slot_pin {
  int slot;
  int pin;
 } path[4];
 int i=0;

 while (dev->bus->number > 0) {

  slot = path[i].slot = PCI_SLOT(dev->devfn);
  pin = path[i].pin = pci_swizzle_interrupt_pin(dev, pin);
  dev = dev->bus->self;
  i++;
  if (i > 3) panic("PCI path to root bus too long!\n");
 }

 slot = PCI_SLOT(dev->devfn);




 if ((slot < 3) || (i == 0)) {


  result = IRQ_INTA + pci_swizzle_interrupt_pin(dev, pin) - 1;
 } else {
  i--;
  slot = path[i].slot;
  pin = path[i].pin;
  if (slot > 0) {
   panic("PCI expansion bus device found - not handled!\n");
  } else {
   if (i > 0) {

    i--;
    slot = path[i].slot;
    pin = path[i].pin;

    result = IRQ_P2INTA + (pin - 1);
   } else {

    result = -1;
   }
  }
 }

 return result;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct pci_dev {int irq; TYPE_1__* bus; int dev; } ;
struct TYPE_3__ {int number; } ;


 int PCI_BASE_ADDRESS_0 ;
 int PCI_CACHE_LINE_SIZE ;
 int PCI_COMMAND ;
 int PCI_COMMAND_IO ;
 int PCI_COMMAND_MASTER ;
 int PCI_COMMAND_MEMORY ;
 int PCI_INTERRUPT_LINE ;
 int PCI_LATENCY_TIMER ;
 int RALINK_INT_PCIE0 ;
 int RALINK_PCI0_BAR0SETUP_ADDR ;
 int RALINK_PCI_MEMORY_BASE ;
 int dev_err (int *,char*,int,int,...) ;
 int pci_config_read (TYPE_1__*,int ,int ,int,int *) ;
 int pci_config_write (TYPE_1__*,int ,int ,int,int ) ;
 int pci_read_config_word (struct pci_dev const*,int ,int*) ;
 int pci_write_config_byte (struct pci_dev const*,int ,int) ;
 int pci_write_config_word (struct pci_dev const*,int ,int) ;
 int pcie_w32 (int,int ) ;

int pcibios_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
{
 u16 cmd;
 u32 val;
 int irq = 0;

 if ((dev->bus->number == 0) && (slot == 0)) {
  pcie_w32(0x7FFF0001, RALINK_PCI0_BAR0SETUP_ADDR);
  pci_config_write(dev->bus, 0, PCI_BASE_ADDRESS_0, 4,
     RALINK_PCI_MEMORY_BASE);
  pci_config_read(dev->bus, 0, PCI_BASE_ADDRESS_0, 4, &val);
 } else if ((dev->bus->number == 1) && (slot == 0x0)) {
  irq = RALINK_INT_PCIE0;
 } else {
  dev_err(&dev->dev, "no irq found - bus=0x%x, slot = 0x%x\n",
   dev->bus->number, slot);
  return 0;
 }
 dev_err(&dev->dev, "card - bus=0x%x, slot = 0x%x irq=%d\n",
  dev->bus->number, slot, irq);


 pci_write_config_byte(dev, PCI_CACHE_LINE_SIZE, 0x14);


 pci_write_config_byte(dev, PCI_LATENCY_TIMER, 0xff);
 pci_read_config_word(dev, PCI_COMMAND, &cmd);


 cmd = cmd | PCI_COMMAND_MASTER | PCI_COMMAND_IO | PCI_COMMAND_MEMORY;
 pci_write_config_word(dev, PCI_COMMAND, cmd);
 pci_write_config_byte(dev, PCI_INTERRUPT_LINE, dev->irq);

 return irq;
}

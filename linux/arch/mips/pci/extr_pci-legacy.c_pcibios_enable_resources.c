
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct resource {int flags; scalar_t__ end; int start; } ;
struct pci_dev {struct resource* resource; } ;


 int EINVAL ;
 int IORESOURCE_IO ;
 int IORESOURCE_MEM ;
 int IORESOURCE_ROM_ENABLE ;
 int PCI_COMMAND ;
 int PCI_COMMAND_IO ;
 int PCI_COMMAND_MEMORY ;
 int PCI_NUM_RESOURCES ;
 int PCI_ROM_RESOURCE ;
 int pci_err (struct pci_dev*,char*) ;
 int pci_info (struct pci_dev*,char*,int ,int ) ;
 int pci_read_config_word (struct pci_dev*,int ,int *) ;
 int pci_write_config_word (struct pci_dev*,int ,int ) ;

__attribute__((used)) static int pcibios_enable_resources(struct pci_dev *dev, int mask)
{
 u16 cmd, old_cmd;
 int idx;
 struct resource *r;

 pci_read_config_word(dev, PCI_COMMAND, &cmd);
 old_cmd = cmd;
 for (idx=0; idx < PCI_NUM_RESOURCES; idx++) {

  if (!(mask & (1<<idx)))
   continue;

  r = &dev->resource[idx];
  if (!(r->flags & (IORESOURCE_IO | IORESOURCE_MEM)))
   continue;
  if ((idx == PCI_ROM_RESOURCE) &&
    (!(r->flags & IORESOURCE_ROM_ENABLE)))
   continue;
  if (!r->start && r->end) {
   pci_err(dev,
    "can't enable device: resource collisions\n");
   return -EINVAL;
  }
  if (r->flags & IORESOURCE_IO)
   cmd |= PCI_COMMAND_IO;
  if (r->flags & IORESOURCE_MEM)
   cmd |= PCI_COMMAND_MEMORY;
 }
 if (cmd != old_cmd) {
  pci_info(dev, "enabling device (%04x -> %04x)\n", old_cmd, cmd);
  pci_write_config_word(dev, PCI_COMMAND, cmd);
 }
 return 0;
}

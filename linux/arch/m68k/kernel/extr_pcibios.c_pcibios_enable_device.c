
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct resource {int flags; scalar_t__ end; int start; } ;
struct pci_dev {int class; struct resource* resource; } ;


 int EINVAL ;
 int IORESOURCE_IO ;
 int IORESOURCE_MEM ;
 int PCI_BASE_CLASS_BRIDGE ;
 int PCI_COMMAND ;
 int PCI_COMMAND_IO ;
 int PCI_COMMAND_MEMORY ;
 int pci_name (struct pci_dev*) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;
 int pr_err (char*,int ) ;
 int pr_info (char*,int ,int,int) ;

int pcibios_enable_device(struct pci_dev *dev, int mask)
{
 struct resource *r;
 u16 cmd, newcmd;
 int idx;

 pci_read_config_word(dev, PCI_COMMAND, &cmd);
 newcmd = cmd;

 for (idx = 0; idx < 6; idx++) {

  if (!(mask & (1 << idx)))
   continue;

  r = dev->resource + idx;
  if (!r->start && r->end) {
   pr_err("PCI: Device %s not available because of resource collisions\n",
    pci_name(dev));
   return -EINVAL;
  }
  if (r->flags & IORESOURCE_IO)
   newcmd |= PCI_COMMAND_IO;
  if (r->flags & IORESOURCE_MEM)
   newcmd |= PCI_COMMAND_MEMORY;
 }




 if ((dev->class >> 16) == PCI_BASE_CLASS_BRIDGE)
  newcmd |= PCI_COMMAND_IO | PCI_COMMAND_MEMORY;


 if (newcmd != cmd) {
  pr_info("PCI: enabling device %s (0x%04x -> 0x%04x)\n",
   pci_name(dev), cmd, newcmd);
  pci_write_config_word(dev, PCI_COMMAND, newcmd);
 }
 return 0;
}

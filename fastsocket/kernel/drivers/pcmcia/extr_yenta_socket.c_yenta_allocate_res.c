
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct yenta_socket {struct pci_dev* dev; } ;
struct resource {unsigned int flags; unsigned int start; unsigned int end; int name; scalar_t__ parent; } ;
struct pci_dev {int dev; TYPE_1__* subordinate; struct resource* resource; } ;
struct pci_bus_region {unsigned int start; unsigned int end; } ;
struct TYPE_2__ {int name; } ;


 int BRIDGE_IO_ACC ;
 int BRIDGE_IO_MAX ;
 int BRIDGE_IO_MIN ;
 int BRIDGE_MEM_ACC ;
 int BRIDGE_MEM_MAX ;
 int BRIDGE_MEM_MIN ;
 unsigned int IORESOURCE_IO ;
 unsigned int IORESOURCE_MEM ;
 unsigned int IORESOURCE_PREFETCH ;
 int KERN_INFO ;
 int PCI_BRIDGE_RESOURCES ;
 unsigned int config_readl (struct yenta_socket*,int) ;
 int dev_printk (int ,int *,char*,unsigned int) ;
 int override_bios ;
 scalar_t__ pci_claim_resource (struct pci_dev*,int) ;
 int pcibios_bus_to_resource (struct pci_dev*,struct resource*,struct pci_bus_region*) ;
 scalar_t__ yenta_search_res (struct yenta_socket*,struct resource*,int ) ;

__attribute__((used)) static int yenta_allocate_res(struct yenta_socket *socket, int nr, unsigned type, int addr_start, int addr_end)
{
 struct pci_dev *dev = socket->dev;
 struct resource *res;
 struct pci_bus_region region;
 unsigned mask;

 res = dev->resource + PCI_BRIDGE_RESOURCES + nr;

 if (res->parent)
  return 0;


 mask = ~0xfff;
 if (type & IORESOURCE_IO)
  mask = ~3;

 res->name = dev->subordinate->name;
 res->flags = type;

 region.start = config_readl(socket, addr_start) & mask;
 region.end = config_readl(socket, addr_end) | ~mask;
 if (region.start && region.end > region.start && !override_bios) {
  pcibios_bus_to_resource(dev, res, &region);
  if (pci_claim_resource(dev, PCI_BRIDGE_RESOURCES + nr) == 0)
   return 0;
  dev_printk(KERN_INFO, &dev->dev,
      "Preassigned resource %d busy or not available, "
      "reconfiguring...\n",
      nr);
 }

 if (type & IORESOURCE_IO) {
  if ((yenta_search_res(socket, res, BRIDGE_IO_MAX)) ||
      (yenta_search_res(socket, res, BRIDGE_IO_ACC)) ||
      (yenta_search_res(socket, res, BRIDGE_IO_MIN)))
   return 1;
 } else {
  if (type & IORESOURCE_PREFETCH) {
   if ((yenta_search_res(socket, res, BRIDGE_MEM_MAX)) ||
       (yenta_search_res(socket, res, BRIDGE_MEM_ACC)) ||
       (yenta_search_res(socket, res, BRIDGE_MEM_MIN)))
    return 1;

   res->flags = IORESOURCE_MEM;
  }
  if ((yenta_search_res(socket, res, BRIDGE_MEM_MAX)) ||
      (yenta_search_res(socket, res, BRIDGE_MEM_ACC)) ||
      (yenta_search_res(socket, res, BRIDGE_MEM_MIN)))
   return 1;
 }

 dev_printk(KERN_INFO, &dev->dev,
     "no resource of type %x available, trying to continue...\n",
     type);
 res->start = res->end = res->flags = 0;
 return 0;
}

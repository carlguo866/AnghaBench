
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct pci_bus_resource {unsigned int flags; int list; struct resource* res; } ;
struct pci_bus {int resources; int dev; struct resource** resource; } ;


 int GFP_KERNEL ;
 int PCI_BRIDGE_RESOURCE_NUM ;
 int PCI_BUS_NUM_RESOURCES ;
 int dev_err (int *,char*,struct resource*) ;
 struct pci_bus_resource* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

void pci_bus_add_resource(struct pci_bus *bus, struct resource *res,
     unsigned int flags)
{
 struct pci_bus_resource *bus_res;
 int i;

 for (i = PCI_BRIDGE_RESOURCE_NUM; i < PCI_BUS_NUM_RESOURCES; i++)
  if (bus->resource[i] == 0) {
   bus->resource[i] = res;
   return;
  }

 bus_res = kzalloc(sizeof(struct pci_bus_resource), GFP_KERNEL);
 if (!bus_res) {
  dev_err(&bus->dev, "can't add %pR resource\n", res);
  return;
 }

 bus_res->res = res;
 bus_res->flags = flags;
 list_add_tail(&bus_res->list, &bus->resources);
}

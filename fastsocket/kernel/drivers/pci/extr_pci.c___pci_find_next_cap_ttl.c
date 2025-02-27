
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_bus {int dummy; } ;


 int PCI_CAP_LIST_ID ;
 scalar_t__ PCI_CAP_LIST_NEXT ;
 int pci_bus_read_config_byte (struct pci_bus*,unsigned int,int,int*) ;

__attribute__((used)) static int __pci_find_next_cap_ttl(struct pci_bus *bus, unsigned int devfn,
       u8 pos, int cap, int *ttl)
{
 u8 id;

 while ((*ttl)--) {
  pci_bus_read_config_byte(bus, devfn, pos, &pos);
  if (pos < 0x40)
   break;
  pos &= ~3;
  pci_bus_read_config_byte(bus, devfn, pos + PCI_CAP_LIST_ID,
      &id);
  if (id == 0xff)
   break;
  if (id == cap)
   return pos;
  pos += PCI_CAP_LIST_NEXT;
 }
 return 0;
}

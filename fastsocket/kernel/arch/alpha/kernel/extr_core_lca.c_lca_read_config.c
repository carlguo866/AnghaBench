
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int dummy; } ;


 unsigned long LCA_CONF ;
 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_SUCCESSFUL ;
 int conf_read (unsigned long) ;
 scalar_t__ mk_conf_addr (struct pci_bus*,unsigned int,int,unsigned long*) ;

__attribute__((used)) static int
lca_read_config(struct pci_bus *bus, unsigned int devfn, int where,
  int size, u32 *value)
{
 unsigned long addr, pci_addr;
 long mask;
 int shift;

 if (mk_conf_addr(bus, devfn, where, &pci_addr))
  return PCIBIOS_DEVICE_NOT_FOUND;

 shift = (where & 3) * 8;
 mask = (size - 1) * 8;
 addr = (pci_addr << 5) + mask + LCA_CONF;
 *value = conf_read(addr) >> (shift);
 return PCIBIOS_SUCCESSFUL;
}

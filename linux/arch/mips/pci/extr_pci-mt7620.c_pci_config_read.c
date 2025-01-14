
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pci_bus {int number; } ;


 int PCIBIOS_SUCCESSFUL ;
 int PCI_FUNC (unsigned int) ;
 unsigned int PCI_SLOT (unsigned int) ;
 int RALINK_PCI_CONFIG_ADDR ;
 int RALINK_PCI_CONFIG_DATA_VIRT_REG ;
 int bridge_r32 (int ) ;
 int bridge_w32 (int,int ) ;

__attribute__((used)) static int pci_config_read(struct pci_bus *bus, unsigned int devfn, int where,
      int size, u32 *val)
{
 unsigned int slot = PCI_SLOT(devfn);
 u8 func = PCI_FUNC(devfn);
 u32 address;
 u32 data;
 u32 num = 0;

 if (bus)
  num = bus->number;

 address = (((where & 0xF00) >> 8) << 24) | (num << 16) | (slot << 11) |
    (func << 8) | (where & 0xfc) | 0x80000000;
 bridge_w32(address, RALINK_PCI_CONFIG_ADDR);
 data = bridge_r32(RALINK_PCI_CONFIG_DATA_VIRT_REG);

 switch (size) {
 case 1:
  *val = (data >> ((where & 3) << 3)) & 0xff;
  break;
 case 2:
  *val = (data >> ((where & 3) << 3)) & 0xffff;
  break;
 case 4:
  *val = data;
  break;
 }

 return PCIBIOS_SUCCESSFUL;
}

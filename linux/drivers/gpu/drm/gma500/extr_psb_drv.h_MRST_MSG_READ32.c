
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint ;
typedef int u32 ;
struct pci_dev {int dummy; } ;


 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_domain_bus_and_slot (int,int ,int ) ;
 int pci_read_config_dword (struct pci_dev*,int,int *) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;

__attribute__((used)) static inline u32 MRST_MSG_READ32(int domain, uint port, uint offset)
{
 int mcr = (0xD0<<24) | (port << 16) | (offset << 8);
 uint32_t ret_val = 0;
 struct pci_dev *pci_root = pci_get_domain_bus_and_slot(domain, 0, 0);
 pci_write_config_dword(pci_root, 0xD0, mcr);
 pci_read_config_dword(pci_root, 0xD4, &ret_val);
 pci_dev_put(pci_root);
 return ret_val;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 scalar_t__ PCI_BRIDGE_RESOURCES ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int piix4_io_quirk (struct pci_dev*,char*,int,int) ;
 int piix4_mem_quirk (struct pci_dev*,char*,int,int) ;
 int quirk_io_region (struct pci_dev*,int,int,scalar_t__,char*) ;

__attribute__((used)) static void quirk_piix4_acpi(struct pci_dev *dev)
{
 u32 res_a;

 quirk_io_region(dev, 0x40, 64, PCI_BRIDGE_RESOURCES, "PIIX4 ACPI");
 quirk_io_region(dev, 0x90, 16, PCI_BRIDGE_RESOURCES+1, "PIIX4 SMB");


 pci_read_config_dword(dev, 0x5c, &res_a);

 piix4_io_quirk(dev, "PIIX4 devres B", 0x60, 3 << 21);
 piix4_io_quirk(dev, "PIIX4 devres C", 0x64, 3 << 21);




 if (res_a & (1 << 29)) {
  piix4_io_quirk(dev, "PIIX4 devres E", 0x68, 1 << 20);
  piix4_mem_quirk(dev, "PIIX4 devres F", 0x6c, 1 << 7);
 }

 if (res_a & (1 << 30)) {
  piix4_io_quirk(dev, "PIIX4 devres G", 0x70, 1 << 20);
  piix4_mem_quirk(dev, "PIIX4 devres H", 0x74, 1 << 7);
 }
 piix4_io_quirk(dev, "PIIX4 devres I", 0x78, 1 << 20);
 piix4_io_quirk(dev, "PIIX4 devres J", 0x7c, 1 << 20);
}

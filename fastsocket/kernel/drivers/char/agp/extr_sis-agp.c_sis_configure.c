
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct aper_size_info_8 {int size_value; } ;
struct TYPE_2__ {int gart_bus_addr; int dev; int gatt_bus_addr; int current_size; } ;


 int AGP_APBASE ;
 struct aper_size_info_8* A_SIZE_8 (int ) ;
 int PCI_BASE_ADDRESS_MEM_MASK ;
 int SIS_APSIZE ;
 int SIS_ATTBASE ;
 int SIS_TLBCNTRL ;
 TYPE_1__* agp_bridge ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_write_config_byte (int ,int ,int) ;
 int pci_write_config_dword (int ,int ,int ) ;

__attribute__((used)) static int sis_configure(void)
{
 u32 temp;
 struct aper_size_info_8 *current_size;

 current_size = A_SIZE_8(agp_bridge->current_size);
 pci_write_config_byte(agp_bridge->dev, SIS_TLBCNTRL, 0x05);
 pci_read_config_dword(agp_bridge->dev, AGP_APBASE, &temp);
 agp_bridge->gart_bus_addr = (temp & PCI_BASE_ADDRESS_MEM_MASK);
 pci_write_config_dword(agp_bridge->dev, SIS_ATTBASE,
          agp_bridge->gatt_bus_addr);
 pci_write_config_byte(agp_bridge->dev, SIS_APSIZE,
         current_size->size_value);
 return 0;
}

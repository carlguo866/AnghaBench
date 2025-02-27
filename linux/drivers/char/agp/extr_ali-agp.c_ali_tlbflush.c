
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct agp_memory {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int ALI_TAGCTRL ;
 int ALI_TLBCTRL ;
 TYPE_1__* agp_bridge ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_write_config_dword (int ,int ,int) ;

__attribute__((used)) static void ali_tlbflush(struct agp_memory *mem)
{
 u32 temp;

 pci_read_config_dword(agp_bridge->dev, ALI_TLBCTRL, &temp);
 temp &= 0xfffffff0;
 temp |= (1<<0 | 1<<1);
 pci_write_config_dword(agp_bridge->dev, ALI_TAGCTRL, temp);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct slot {int hotplug_slot; int devfn; int bus; } ;


 int ENODEV ;
 int HS_CSR_LOO ;
 int PCI_CAP_ID_CHSWP ;
 int err (char*,int ) ;
 int hotplug_slot_name (int ) ;
 int pci_bus_find_capability (int ,int ,int ) ;
 scalar_t__ pci_bus_read_config_word (int ,int ,int,int*) ;
 scalar_t__ pci_bus_write_config_word (int ,int ,int,int) ;

int cpci_led_off(struct slot* slot)
{
 int hs_cap;
 u16 hs_csr;

 hs_cap = pci_bus_find_capability(slot->bus,
      slot->devfn,
      PCI_CAP_ID_CHSWP);
 if (!hs_cap)
  return -ENODEV;
 if (pci_bus_read_config_word(slot->bus,
         slot->devfn,
         hs_cap + 2,
         &hs_csr))
  return -ENODEV;
 if (hs_csr & HS_CSR_LOO) {
  hs_csr &= ~HS_CSR_LOO;
  if (pci_bus_write_config_word(slot->bus,
           slot->devfn,
           hs_cap + 2,
           hs_csr)) {
   err("Could not clear LOO for slot %s",
       hotplug_slot_name(slot->hotplug_slot));
   return -ENODEV;
  }
 }
 return 0;
}

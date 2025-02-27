
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct pci_params {int speed; int width; } ;
struct adapter {int dummy; } ;


 int PCI_CAP_ID_EXP ;
 scalar_t__ PCI_EXP_LNKSTA ;
 int PCI_EXP_LNKSTA_CLS ;
 int PCI_EXP_LNKSTA_NLW ;
 scalar_t__ t4_os_find_pci_capability (struct adapter*,int ) ;
 int t4_os_pci_read_cfg2 (struct adapter*,scalar_t__,int*) ;

__attribute__((used)) static void get_pci_mode(struct adapter *adapter,
       struct pci_params *p)
{
 u16 val;
 u32 pcie_cap;

 pcie_cap = t4_os_find_pci_capability(adapter, PCI_CAP_ID_EXP);
 if (pcie_cap) {
  t4_os_pci_read_cfg2(adapter, pcie_cap + PCI_EXP_LNKSTA, &val);
  p->speed = val & PCI_EXP_LNKSTA_CLS;
  p->width = (val & PCI_EXP_LNKSTA_NLW) >> 4;
 }
}

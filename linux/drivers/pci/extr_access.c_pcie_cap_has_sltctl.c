
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_EXP_FLAGS_SLOT ;
 int pcie_caps_reg (struct pci_dev const*) ;
 scalar_t__ pcie_downstream_port (struct pci_dev const*) ;

__attribute__((used)) static inline bool pcie_cap_has_sltctl(const struct pci_dev *dev)
{
 return pcie_downstream_port(dev) &&
        pcie_caps_reg(dev) & PCI_EXP_FLAGS_SLOT;
}

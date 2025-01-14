
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int ENOTTY ;
 scalar_t__ INTEL_SPT_ACS_CTRL ;
 scalar_t__ PCI_ACS_CAP ;
 int PCI_ACS_CR ;
 int PCI_ACS_RR ;
 int PCI_ACS_SV ;
 int PCI_ACS_UF ;
 int PCI_EXT_CAP_ID_ACS ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_info (struct pci_dev*,char*) ;
 int pci_quirk_intel_spt_pch_acs_match (struct pci_dev*) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;
 int pci_write_config_dword (struct pci_dev*,scalar_t__,int) ;

__attribute__((used)) static int pci_quirk_enable_intel_spt_pch_acs(struct pci_dev *dev)
{
 int pos;
 u32 cap, ctrl;

 if (!pci_quirk_intel_spt_pch_acs_match(dev))
  return -ENOTTY;

 pos = pci_find_ext_capability(dev, PCI_EXT_CAP_ID_ACS);
 if (!pos)
  return -ENOTTY;

 pci_read_config_dword(dev, pos + PCI_ACS_CAP, &cap);
 pci_read_config_dword(dev, pos + INTEL_SPT_ACS_CTRL, &ctrl);

 ctrl |= (cap & PCI_ACS_SV);
 ctrl |= (cap & PCI_ACS_RR);
 ctrl |= (cap & PCI_ACS_CR);
 ctrl |= (cap & PCI_ACS_UF);

 pci_write_config_dword(dev, pos + INTEL_SPT_ACS_CTRL, ctrl);

 pci_info(dev, "Intel SPT PCH root port ACS workaround enabled\n");

 return 0;
}

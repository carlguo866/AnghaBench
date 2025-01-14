
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {scalar_t__ subordinate; int dev; } ;
struct hpp_type2 {int revision; int unc_err_mask_and; int unc_err_mask_or; int unc_err_sever_and; int unc_err_sever_or; int cor_err_mask_and; int cor_err_mask_or; int adv_err_cap_and; int adv_err_cap_or; int pci_exp_lnkctl_or; int pci_exp_lnkctl_and; int pci_exp_devctl_or; int pci_exp_devctl_and; } ;


 scalar_t__ PCI_ERR_CAP ;
 scalar_t__ PCI_ERR_COR_MASK ;
 scalar_t__ PCI_ERR_UNCOR_MASK ;
 scalar_t__ PCI_ERR_UNCOR_SEVER ;
 int PCI_EXP_DEVCTL ;
 int PCI_EXP_LNKCTL ;
 int PCI_EXT_CAP_ID_ERR ;
 int dev_warn (int *,char*,int) ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;
 int pci_write_config_dword (struct pci_dev*,scalar_t__,int) ;
 int pcie_capability_clear_and_set_word (struct pci_dev*,int ,int ,int ) ;

__attribute__((used)) static void program_hpp_type2(struct pci_dev *dev, struct hpp_type2 *hpp)
{
 int pos;
 u32 reg32;

 if (!hpp)
  return;

 if (hpp->revision > 1) {
  dev_warn(&dev->dev, "PCIe settings rev %d not supported\n",
    hpp->revision);
  return;
 }


 pcie_capability_clear_and_set_word(dev, PCI_EXP_DEVCTL,
   ~hpp->pci_exp_devctl_and, hpp->pci_exp_devctl_or);


 if (dev->subordinate)
  pcie_capability_clear_and_set_word(dev, PCI_EXP_LNKCTL,
   ~hpp->pci_exp_lnkctl_and, hpp->pci_exp_lnkctl_or);


 pos = pci_find_ext_capability(dev, PCI_EXT_CAP_ID_ERR);
 if (!pos)
  return;


 pci_read_config_dword(dev, pos + PCI_ERR_UNCOR_MASK, &reg32);
 reg32 = (reg32 & hpp->unc_err_mask_and) | hpp->unc_err_mask_or;
 pci_write_config_dword(dev, pos + PCI_ERR_UNCOR_MASK, reg32);


 pci_read_config_dword(dev, pos + PCI_ERR_UNCOR_SEVER, &reg32);
 reg32 = (reg32 & hpp->unc_err_sever_and) | hpp->unc_err_sever_or;
 pci_write_config_dword(dev, pos + PCI_ERR_UNCOR_SEVER, reg32);


 pci_read_config_dword(dev, pos + PCI_ERR_COR_MASK, &reg32);
 reg32 = (reg32 & hpp->cor_err_mask_and) | hpp->cor_err_mask_or;
 pci_write_config_dword(dev, pos + PCI_ERR_COR_MASK, reg32);


 pci_read_config_dword(dev, pos + PCI_ERR_CAP, &reg32);
 reg32 = (reg32 & hpp->adv_err_cap_and) | hpp->adv_err_cap_or;
 pci_write_config_dword(dev, pos + PCI_ERR_CAP, reg32);







}

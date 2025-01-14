
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct tegra_pcie_dw {int init_link_width; scalar_t__ pcie_cap_base; int pci; scalar_t__ enable_cdm_check; } ;
struct pcie_port {int dummy; } ;
struct dw_pcie {int dummy; } ;


 int APPL_INTR_EN_L0_0 ;
 int APPL_INTR_EN_L0_0_CDM_REG_CHK_INT_EN ;
 int APPL_INTR_EN_L0_0_LINK_STATE_INT_EN ;
 int APPL_INTR_EN_L1_0_0 ;
 int APPL_INTR_EN_L1_0_0_LINK_REQ_RST_NOT_INT_EN ;
 int APPL_INTR_EN_L1_18 ;
 int APPL_INTR_EN_L1_18_CDM_REG_CHK_CMP_ERR ;
 int APPL_INTR_EN_L1_18_CDM_REG_CHK_LOGIC_ERR ;
 scalar_t__ PCI_EXP_LNKCTL ;
 int PCI_EXP_LNKCTL_LBMIE ;
 scalar_t__ PCI_EXP_LNKSTA ;
 int PCI_EXP_LNKSTA_NLW ;
 int PCI_EXP_LNKSTA_NLW_SHIFT ;
 int appl_readl (struct tegra_pcie_dw*,int ) ;
 int appl_writel (struct tegra_pcie_dw*,int ,int ) ;
 int dw_pcie_readw_dbi (int *,scalar_t__) ;
 int dw_pcie_writew_dbi (int *,scalar_t__,int) ;
 struct dw_pcie* to_dw_pcie_from_pp (struct pcie_port*) ;
 struct tegra_pcie_dw* to_tegra_pcie (struct dw_pcie*) ;

__attribute__((used)) static void tegra_pcie_enable_system_interrupts(struct pcie_port *pp)
{
 struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 struct tegra_pcie_dw *pcie = to_tegra_pcie(pci);
 u32 val;
 u16 val_w;

 val = appl_readl(pcie, APPL_INTR_EN_L0_0);
 val |= APPL_INTR_EN_L0_0_LINK_STATE_INT_EN;
 appl_writel(pcie, val, APPL_INTR_EN_L0_0);

 val = appl_readl(pcie, APPL_INTR_EN_L1_0_0);
 val |= APPL_INTR_EN_L1_0_0_LINK_REQ_RST_NOT_INT_EN;
 appl_writel(pcie, val, APPL_INTR_EN_L1_0_0);

 if (pcie->enable_cdm_check) {
  val = appl_readl(pcie, APPL_INTR_EN_L0_0);
  val |= APPL_INTR_EN_L0_0_CDM_REG_CHK_INT_EN;
  appl_writel(pcie, val, APPL_INTR_EN_L0_0);

  val = appl_readl(pcie, APPL_INTR_EN_L1_18);
  val |= APPL_INTR_EN_L1_18_CDM_REG_CHK_CMP_ERR;
  val |= APPL_INTR_EN_L1_18_CDM_REG_CHK_LOGIC_ERR;
  appl_writel(pcie, val, APPL_INTR_EN_L1_18);
 }

 val_w = dw_pcie_readw_dbi(&pcie->pci, pcie->pcie_cap_base +
      PCI_EXP_LNKSTA);
 pcie->init_link_width = (val_w & PCI_EXP_LNKSTA_NLW) >>
    PCI_EXP_LNKSTA_NLW_SHIFT;

 val_w = dw_pcie_readw_dbi(&pcie->pci, pcie->pcie_cap_base +
      PCI_EXP_LNKCTL);
 val_w |= PCI_EXP_LNKCTL_LBMIE;
 dw_pcie_writew_dbi(&pcie->pci, pcie->pcie_cap_base + PCI_EXP_LNKCTL,
      val_w);
}

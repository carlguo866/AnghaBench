
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mobiveil_pcie {scalar_t__ csr_axi_slave_base; } ;


 scalar_t__ PAB_CTRL ;
 int PAGE_SEL_MASK ;
 int PAGE_SEL_SHIFT ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mobiveil_pcie_sel_page(struct mobiveil_pcie *pcie, u8 pg_idx)
{
 u32 val;

 val = readl(pcie->csr_axi_slave_base + PAB_CTRL);
 val &= ~(PAGE_SEL_MASK << PAGE_SEL_SHIFT);
 val |= (pg_idx & PAGE_SEL_MASK) << PAGE_SEL_SHIFT;

 writel(val, pcie->csr_axi_slave_base + PAB_CTRL);
}

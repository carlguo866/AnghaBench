
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct cdns_pcie {scalar_t__ reg_base; } ;


 scalar_t__ CDNS_PCIE_RP_BASE ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static inline void cdns_pcie_rp_writeb(struct cdns_pcie *pcie,
           u32 reg, u8 value)
{
 writeb(value, pcie->reg_base + CDNS_PCIE_RP_BASE + reg);
}

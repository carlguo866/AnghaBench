
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct iproc_pcie {scalar_t__ base; } ;
typedef enum iproc_pcie_reg { ____Placeholder_iproc_pcie_reg } iproc_pcie_reg ;


 scalar_t__ iproc_pcie_reg_is_invalid (scalar_t__) ;
 scalar_t__ iproc_pcie_reg_offset (struct iproc_pcie*,int) ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 iproc_pcie_read_reg(struct iproc_pcie *pcie,
          enum iproc_pcie_reg reg)
{
 u16 offset = iproc_pcie_reg_offset(pcie, reg);

 if (iproc_pcie_reg_is_invalid(offset))
  return 0;

 return readl(pcie->base + offset);
}

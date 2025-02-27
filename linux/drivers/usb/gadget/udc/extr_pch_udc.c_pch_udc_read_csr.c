
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pch_udc_dev {int dummy; } ;


 unsigned long PCH_UDC_CSR (unsigned int) ;
 int pch_udc_csr_busy (struct pch_udc_dev*) ;
 int pch_udc_readl (struct pch_udc_dev*,unsigned long) ;

__attribute__((used)) static u32 pch_udc_read_csr(struct pch_udc_dev *dev, unsigned int ep)
{
 unsigned long reg = PCH_UDC_CSR(ep);

 pch_udc_csr_busy(dev);
 pch_udc_readl(dev, reg);
 pch_udc_csr_busy(dev);
 return pch_udc_readl(dev, reg);
}

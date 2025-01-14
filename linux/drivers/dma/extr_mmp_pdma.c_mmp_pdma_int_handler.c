
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmp_pdma_phy {int dummy; } ;
struct mmp_pdma_device {int dma_channels; struct mmp_pdma_phy* phy; scalar_t__ base; } ;
typedef int irqreturn_t ;


 scalar_t__ DINT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int __ffs (int) ;
 int mmp_pdma_chan_handler (int,struct mmp_pdma_phy*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static irqreturn_t mmp_pdma_int_handler(int irq, void *dev_id)
{
 struct mmp_pdma_device *pdev = dev_id;
 struct mmp_pdma_phy *phy;
 u32 dint = readl(pdev->base + DINT);
 int i, ret;
 int irq_num = 0;

 while (dint) {
  i = __ffs(dint);

  if (i >= pdev->dma_channels)
   break;
  dint &= (dint - 1);
  phy = &pdev->phy[i];
  ret = mmp_pdma_chan_handler(irq, phy);
  if (ret == IRQ_HANDLED)
   irq_num++;
 }

 if (irq_num)
  return IRQ_HANDLED;

 return IRQ_NONE;
}

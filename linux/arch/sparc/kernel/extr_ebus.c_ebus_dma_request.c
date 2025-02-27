
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ebus_dma_info {int lock; scalar_t__ regs; } ;
typedef size_t dma_addr_t ;


 scalar_t__ EBDMA_ADDR ;
 scalar_t__ EBDMA_COUNT ;
 scalar_t__ EBDMA_CSR ;
 int EBDMA_CSR_EN_DMA ;
 int EBDMA_CSR_NA_LOADED ;
 int EBUSY ;
 int EINVAL ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (size_t,scalar_t__) ;

int ebus_dma_request(struct ebus_dma_info *p, dma_addr_t bus_addr, size_t len)
{
 unsigned long flags;
 u32 csr;
 int err;

 if (len >= (1 << 24))
  return -EINVAL;

 spin_lock_irqsave(&p->lock, flags);
 csr = readl(p->regs + EBDMA_CSR);
 err = -EINVAL;
 if (!(csr & EBDMA_CSR_EN_DMA))
  goto out;
 err = -EBUSY;
 if (csr & EBDMA_CSR_NA_LOADED)
  goto out;

 writel(len, p->regs + EBDMA_COUNT);
 writel(bus_addr, p->regs + EBDMA_ADDR);
 err = 0;

out:
 spin_unlock_irqrestore(&p->lock, flags);

 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct imx_dma_channel {int hw_chaining; unsigned int ccr_from_device; unsigned int ccr_to_device; } ;


 unsigned int CCR_REN ;
 scalar_t__ DMA_BASE ;
 scalar_t__ DMA_RSSR (int) ;
 int EINVAL ;
 int __raw_writel (unsigned int,scalar_t__) ;
 struct imx_dma_channel* imx_dma_channels ;
 int imx_dma_hw_chain (struct imx_dma_channel*) ;

int
imx_dma_config_channel(int channel, unsigned int config_port,
 unsigned int config_mem, unsigned int dmareq, int hw_chaining)
{
 struct imx_dma_channel *imxdma = &imx_dma_channels[channel];
 u32 dreq = 0;

 imxdma->hw_chaining = 0;

 if (hw_chaining) {
  imxdma->hw_chaining = 1;
  if (!imx_dma_hw_chain(imxdma))
   return -EINVAL;
 }

 if (dmareq)
  dreq = CCR_REN;

 imxdma->ccr_from_device = config_port | (config_mem << 2) | dreq;
 imxdma->ccr_to_device = config_mem | (config_port << 2) | dreq;

 __raw_writel(dmareq, DMA_BASE + DMA_RSSR(channel));

 return 0;
}

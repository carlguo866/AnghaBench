
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct fsl_dma_ld_hw {int next_ln_addr; } ;
struct fsl_dma_chan {int feature; } ;
typedef int dma_addr_t ;


 int CPU_TO_DMA (struct fsl_dma_chan*,int,int) ;
 int FSL_DMA_IP_83XX ;
 int FSL_DMA_IP_MASK ;
 int FSL_DMA_SNEN ;

__attribute__((used)) static void set_desc_next(struct fsl_dma_chan *fsl_chan,
    struct fsl_dma_ld_hw *hw, dma_addr_t next)
{
 u64 snoop_bits;

 snoop_bits = ((fsl_chan->feature & FSL_DMA_IP_MASK) == FSL_DMA_IP_83XX)
  ? FSL_DMA_SNEN : 0;
 hw->next_ln_addr = CPU_TO_DMA(fsl_chan, snoop_bits | next, 64);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virt_dma_desc {int node; int tx; } ;
struct sdma_engine {TYPE_1__* channel_control; } ;
struct sdma_desc {int bd_phys; } ;
struct sdma_channel {int channel; int flags; struct sdma_desc* desc; struct sdma_engine* sdma; int vc; } ;
struct TYPE_2__ {int current_bd_ptr; int base_bd_ptr; } ;


 int IMX_DMA_SG_LOOP ;
 int list_del (int *) ;
 int sdma_enable_channel (struct sdma_engine*,int) ;
 struct sdma_desc* to_sdma_desc (int *) ;
 struct virt_dma_desc* vchan_next_desc (int *) ;

__attribute__((used)) static void sdma_start_desc(struct sdma_channel *sdmac)
{
 struct virt_dma_desc *vd = vchan_next_desc(&sdmac->vc);
 struct sdma_desc *desc;
 struct sdma_engine *sdma = sdmac->sdma;
 int channel = sdmac->channel;

 if (!vd) {
  sdmac->desc = ((void*)0);
  return;
 }
 sdmac->desc = desc = to_sdma_desc(&vd->tx);




 if (!(sdmac->flags & IMX_DMA_SG_LOOP))
  list_del(&vd->node);

 sdma->channel_control[channel].base_bd_ptr = desc->bd_phys;
 sdma->channel_control[channel].current_bd_ptr = desc->bd_phys;
 sdma_enable_channel(sdma, sdmac->channel);
}

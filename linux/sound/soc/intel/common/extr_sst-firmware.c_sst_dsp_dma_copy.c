
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sst_dsp {int dev; struct sst_dma* dma; } ;
struct sst_dma {TYPE_2__* ch; } ;
struct dma_async_tx_descriptor {int (* tx_submit ) (struct dma_async_tx_descriptor*) ;struct sst_dsp* callback_param; int callback; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {struct dma_async_tx_descriptor* (* device_prep_dma_memcpy ) (TYPE_2__*,scalar_t__,scalar_t__,size_t,int ) ;} ;


 int DMA_CTRL_ACK ;
 int EINVAL ;
 int ENODEV ;
 int dev_dbg (int ,char*,unsigned long,unsigned long,size_t) ;
 int dev_err (int ,char*) ;
 int dma_wait_for_async_tx (struct dma_async_tx_descriptor*) ;
 int sst_dma_transfer_complete ;
 struct dma_async_tx_descriptor* stub1 (TYPE_2__*,scalar_t__,scalar_t__,size_t,int ) ;
 int stub2 (struct dma_async_tx_descriptor*) ;

__attribute__((used)) static int sst_dsp_dma_copy(struct sst_dsp *sst, dma_addr_t dest_addr,
 dma_addr_t src_addr, size_t size)
{
 struct dma_async_tx_descriptor *desc;
 struct sst_dma *dma = sst->dma;

 if (dma->ch == ((void*)0)) {
  dev_err(sst->dev, "error: no DMA channel\n");
  return -ENODEV;
 }

 dev_dbg(sst->dev, "DMA: src: 0x%lx dest 0x%lx size %zu\n",
  (unsigned long)src_addr, (unsigned long)dest_addr, size);

 desc = dma->ch->device->device_prep_dma_memcpy(dma->ch, dest_addr,
  src_addr, size, DMA_CTRL_ACK);
 if (!desc){
  dev_err(sst->dev, "error: dma prep memcpy failed\n");
  return -EINVAL;
 }

 desc->callback = sst_dma_transfer_complete;
 desc->callback_param = sst;

 desc->tx_submit(desc);
 dma_wait_for_async_tx(desc);

 return 0;
}

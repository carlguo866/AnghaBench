
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct gdma_dmaengine_chan {int id; size_t next_sg; int fifo_addr; int slave_id; int burst_size; TYPE_2__* desc; } ;
struct gdma_dma_sg {int src_addr; int dst_addr; int len; } ;
struct TYPE_3__ {int dev; } ;
struct gdma_dma_dev {TYPE_1__ ddev; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int direction; struct gdma_dma_sg* sg; } ;


 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 int DMA_MEM_TO_MEM ;
 int EINVAL ;
 int GDMA_REG_CTRL0 (int) ;
 int GDMA_REG_CTRL0_BURST_SHIFT ;
 int GDMA_REG_CTRL0_DONE_INT ;
 int GDMA_REG_CTRL0_DST_ADDR_FIXED ;
 int GDMA_REG_CTRL0_ENABLE ;
 int GDMA_REG_CTRL0_SRC_ADDR_FIXED ;
 int GDMA_REG_CTRL0_SW_MODE ;
 int GDMA_REG_CTRL0_TX_SHIFT ;
 int GDMA_REG_CTRL1 (int) ;
 int GDMA_REG_CTRL1_DST_REQ_SHIFT ;
 int GDMA_REG_CTRL1_NEXT_SHIFT ;
 int GDMA_REG_CTRL1_SRC_REQ_SHIFT ;
 int GDMA_REG_DST_ADDR (int) ;
 int GDMA_REG_SRC_ADDR (int) ;
 int GDMA_RT305X_CTRL0_DST_REQ_SHIFT ;
 int GDMA_RT305X_CTRL0_SRC_REQ_SHIFT ;
 int dev_err (int ,char*,int,...) ;
 struct gdma_dma_dev* gdma_dma_chan_get_dev (struct gdma_dmaengine_chan*) ;
 int gdma_dma_read (struct gdma_dma_dev*,int ) ;
 int gdma_dma_write (struct gdma_dma_dev*,int ,int) ;
 int rt305x_dump_reg (struct gdma_dma_dev*,int) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

__attribute__((used)) static int rt305x_gdma_start_transfer(struct gdma_dmaengine_chan *chan)
{
 struct gdma_dma_dev *dma_dev = gdma_dma_chan_get_dev(chan);
 dma_addr_t src_addr, dst_addr;
 struct gdma_dma_sg *sg;
 u32 ctrl0, ctrl1;


 ctrl0 = gdma_dma_read(dma_dev, GDMA_REG_CTRL0(chan->id));
 if (unlikely(ctrl0 & GDMA_REG_CTRL0_ENABLE)) {
  dev_err(dma_dev->ddev.dev, "chan %d is start(%08x).\n",
   chan->id, ctrl0);
  rt305x_dump_reg(dma_dev, chan->id);
  return -EINVAL;
 }

 sg = &chan->desc->sg[chan->next_sg];
 if (chan->desc->direction == DMA_MEM_TO_DEV) {
  src_addr = sg->src_addr;
  dst_addr = chan->fifo_addr;
  ctrl0 = GDMA_REG_CTRL0_DST_ADDR_FIXED |
   (8 << GDMA_RT305X_CTRL0_SRC_REQ_SHIFT) |
   (chan->slave_id << GDMA_RT305X_CTRL0_DST_REQ_SHIFT);
 } else if (chan->desc->direction == DMA_DEV_TO_MEM) {
  src_addr = chan->fifo_addr;
  dst_addr = sg->dst_addr;
  ctrl0 = GDMA_REG_CTRL0_SRC_ADDR_FIXED |
   (chan->slave_id << GDMA_RT305X_CTRL0_SRC_REQ_SHIFT) |
   (8 << GDMA_RT305X_CTRL0_DST_REQ_SHIFT);
 } else if (chan->desc->direction == DMA_MEM_TO_MEM) {




  src_addr = sg->src_addr;
  dst_addr = sg->dst_addr;
  ctrl0 = GDMA_REG_CTRL0_SW_MODE |
   (8 << GDMA_REG_CTRL1_SRC_REQ_SHIFT) |
   (8 << GDMA_REG_CTRL1_DST_REQ_SHIFT);
 } else {
  dev_err(dma_dev->ddev.dev, "direction type %d error\n",
   chan->desc->direction);
  return -EINVAL;
 }

 ctrl0 |= (sg->len << GDMA_REG_CTRL0_TX_SHIFT) |
   (chan->burst_size << GDMA_REG_CTRL0_BURST_SHIFT) |
   GDMA_REG_CTRL0_DONE_INT | GDMA_REG_CTRL0_ENABLE;
 ctrl1 = chan->id << GDMA_REG_CTRL1_NEXT_SHIFT;

 chan->next_sg++;
 gdma_dma_write(dma_dev, GDMA_REG_SRC_ADDR(chan->id), src_addr);
 gdma_dma_write(dma_dev, GDMA_REG_DST_ADDR(chan->id), dst_addr);
 gdma_dma_write(dma_dev, GDMA_REG_CTRL1(chan->id), ctrl1);


 wmb();
 gdma_dma_write(dma_dev, GDMA_REG_CTRL0(chan->id), ctrl0);

 return 0;
}

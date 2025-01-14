
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sg_table {int nents; int sgl; } ;
struct spi_transfer {struct sg_table rx_sg; struct sg_table tx_sg; } ;
struct driver_data {int n_bytes; TYPE_3__* pdev; TYPE_2__* controller; int ssdr_physical; } ;
struct dma_slave_config {int direction; int dst_addr_width; int src_addr_width; int src_maxburst; int src_addr; int dst_maxburst; int dst_addr; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
struct chip_data {int dma_burst_size; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef enum dma_slave_buswidth { ____Placeholder_dma_slave_buswidth } dma_slave_buswidth ;
typedef int cfg ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {struct dma_chan* dma_rx; struct dma_chan* dma_tx; TYPE_1__* cur_msg; } ;
struct TYPE_4__ {int spi; } ;


 int DMA_CTRL_ACK ;
 int DMA_MEM_TO_DEV ;
 int DMA_PREP_INTERRUPT ;
 int DMA_SLAVE_BUSWIDTH_1_BYTE ;
 int DMA_SLAVE_BUSWIDTH_2_BYTES ;
 int DMA_SLAVE_BUSWIDTH_4_BYTES ;
 int dev_warn (int *,char*) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_sg (struct dma_chan*,int ,int ,int,int) ;
 int dmaengine_slave_config (struct dma_chan*,struct dma_slave_config*) ;
 int memset (struct dma_slave_config*,int ,int) ;
 struct chip_data* spi_get_ctldata (int ) ;

__attribute__((used)) static struct dma_async_tx_descriptor *
pxa2xx_spi_dma_prepare_one(struct driver_data *drv_data,
      enum dma_transfer_direction dir,
      struct spi_transfer *xfer)
{
 struct chip_data *chip =
  spi_get_ctldata(drv_data->controller->cur_msg->spi);
 enum dma_slave_buswidth width;
 struct dma_slave_config cfg;
 struct dma_chan *chan;
 struct sg_table *sgt;
 int ret;

 switch (drv_data->n_bytes) {
 case 1:
  width = DMA_SLAVE_BUSWIDTH_1_BYTE;
  break;
 case 2:
  width = DMA_SLAVE_BUSWIDTH_2_BYTES;
  break;
 default:
  width = DMA_SLAVE_BUSWIDTH_4_BYTES;
  break;
 }

 memset(&cfg, 0, sizeof(cfg));
 cfg.direction = dir;

 if (dir == DMA_MEM_TO_DEV) {
  cfg.dst_addr = drv_data->ssdr_physical;
  cfg.dst_addr_width = width;
  cfg.dst_maxburst = chip->dma_burst_size;

  sgt = &xfer->tx_sg;
  chan = drv_data->controller->dma_tx;
 } else {
  cfg.src_addr = drv_data->ssdr_physical;
  cfg.src_addr_width = width;
  cfg.src_maxburst = chip->dma_burst_size;

  sgt = &xfer->rx_sg;
  chan = drv_data->controller->dma_rx;
 }

 ret = dmaengine_slave_config(chan, &cfg);
 if (ret) {
  dev_warn(&drv_data->pdev->dev, "DMA slave config failed\n");
  return ((void*)0);
 }

 return dmaengine_prep_slave_sg(chan, sgt->sgl, sgt->nents, dir,
           DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
}

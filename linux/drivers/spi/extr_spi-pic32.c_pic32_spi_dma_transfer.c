
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nents; int sgl; } ;
struct TYPE_3__ {int nents; int sgl; } ;
struct spi_transfer {TYPE_2__ tx_sg; TYPE_1__ rx_sg; } ;
struct spi_master {int dma_rx; int dma_tx; } ;
struct pic32_spi {struct spi_master* master; } ;
struct dma_async_tx_descriptor {struct pic32_spi* callback_param; int callback; } ;
typedef int dma_cookie_t ;


 int DMA_CTRL_ACK ;
 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 int DMA_PREP_INTERRUPT ;
 int EINVAL ;
 int ENODEV ;
 int dma_async_issue_pending (int ) ;
 int dma_submit_error (int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_sg (int ,int ,int ,int ,int) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int dmaengine_terminate_all (int ) ;
 int pic32_spi_dma_rx_notify ;

__attribute__((used)) static int pic32_spi_dma_transfer(struct pic32_spi *pic32s,
      struct spi_transfer *xfer)
{
 struct spi_master *master = pic32s->master;
 struct dma_async_tx_descriptor *desc_rx;
 struct dma_async_tx_descriptor *desc_tx;
 dma_cookie_t cookie;
 int ret;

 if (!master->dma_rx || !master->dma_tx)
  return -ENODEV;

 desc_rx = dmaengine_prep_slave_sg(master->dma_rx,
       xfer->rx_sg.sgl,
       xfer->rx_sg.nents,
       DMA_DEV_TO_MEM,
       DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
 if (!desc_rx) {
  ret = -EINVAL;
  goto err_dma;
 }

 desc_tx = dmaengine_prep_slave_sg(master->dma_tx,
       xfer->tx_sg.sgl,
       xfer->tx_sg.nents,
       DMA_MEM_TO_DEV,
       DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
 if (!desc_tx) {
  ret = -EINVAL;
  goto err_dma;
 }


 desc_rx->callback = pic32_spi_dma_rx_notify;
 desc_rx->callback_param = pic32s;

 cookie = dmaengine_submit(desc_rx);
 ret = dma_submit_error(cookie);
 if (ret)
  goto err_dma;

 cookie = dmaengine_submit(desc_tx);
 ret = dma_submit_error(cookie);
 if (ret)
  goto err_dma_tx;

 dma_async_issue_pending(master->dma_rx);
 dma_async_issue_pending(master->dma_tx);

 return 0;

err_dma_tx:
 dmaengine_terminate_all(master->dma_rx);
err_dma:
 return ret;
}

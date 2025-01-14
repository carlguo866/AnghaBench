
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_qspi {int dev; int transfer_complete; struct dma_chan* rx_chan; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int (* tx_submit ) (struct dma_async_tx_descriptor*) ;struct ti_qspi* callback_param; int callback; } ;
typedef enum dma_ctrl_flags { ____Placeholder_dma_ctrl_flags } dma_ctrl_flags ;
typedef int dma_cookie_t ;
typedef int dma_addr_t ;


 int DMA_CTRL_ACK ;
 int DMA_PREP_INTERRUPT ;
 int EIO ;
 int ETIMEDOUT ;
 int dev_err (int ,char*,...) ;
 int dma_async_issue_pending (struct dma_chan*) ;
 int dma_submit_error (int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_dma_memcpy (struct dma_chan*,int ,int ,size_t,int) ;
 int dmaengine_terminate_sync (struct dma_chan*) ;
 int msecs_to_jiffies (size_t) ;
 int reinit_completion (int *) ;
 int stub1 (struct dma_async_tx_descriptor*) ;
 int ti_qspi_dma_callback ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int ti_qspi_dma_xfer(struct ti_qspi *qspi, dma_addr_t dma_dst,
       dma_addr_t dma_src, size_t len)
{
 struct dma_chan *chan = qspi->rx_chan;
 dma_cookie_t cookie;
 enum dma_ctrl_flags flags = DMA_CTRL_ACK | DMA_PREP_INTERRUPT;
 struct dma_async_tx_descriptor *tx;
 int ret;

 tx = dmaengine_prep_dma_memcpy(chan, dma_dst, dma_src, len, flags);
 if (!tx) {
  dev_err(qspi->dev, "device_prep_dma_memcpy error\n");
  return -EIO;
 }

 tx->callback = ti_qspi_dma_callback;
 tx->callback_param = qspi;
 cookie = tx->tx_submit(tx);
 reinit_completion(&qspi->transfer_complete);

 ret = dma_submit_error(cookie);
 if (ret) {
  dev_err(qspi->dev, "dma_submit_error %d\n", cookie);
  return -EIO;
 }

 dma_async_issue_pending(chan);
 ret = wait_for_completion_timeout(&qspi->transfer_complete,
       msecs_to_jiffies(len));
 if (ret <= 0) {
  dmaengine_terminate_sync(chan);
  dev_err(qspi->dev, "DMA wait_for_completion_timeout\n");
  return -ETIMEDOUT;
 }

 return 0;
}

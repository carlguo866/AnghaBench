
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_6__ {struct device dev; } ;
struct imx_i2c_struct {TYPE_1__ adapter; struct imx_i2c_dma* dma; } ;
struct imx_i2c_dma {int dma_data_dir; int dma_len; int dma_buf; TYPE_3__* chan_using; int cmd_complete; int dma_transfer_dir; } ;
struct i2c_msg {int buf; } ;
struct dma_async_tx_descriptor {struct imx_i2c_struct* callback_param; int callback; } ;
struct TYPE_8__ {TYPE_2__* device; } ;
struct TYPE_7__ {struct device* dev; } ;


 int DMA_CTRL_ACK ;
 int DMA_PREP_INTERRUPT ;
 int EINVAL ;
 int dev_err (struct device*,char*) ;
 int dma_async_issue_pending (TYPE_3__*) ;
 int dma_map_single (struct device*,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 scalar_t__ dma_submit_error (int ) ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_single (TYPE_3__*,int ,int ,int ,int) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int dmaengine_terminate_all (TYPE_3__*) ;
 int i2c_imx_dma_callback ;
 int reinit_completion (int *) ;

__attribute__((used)) static int i2c_imx_dma_xfer(struct imx_i2c_struct *i2c_imx,
     struct i2c_msg *msgs)
{
 struct imx_i2c_dma *dma = i2c_imx->dma;
 struct dma_async_tx_descriptor *txdesc;
 struct device *dev = &i2c_imx->adapter.dev;
 struct device *chan_dev = dma->chan_using->device->dev;

 dma->dma_buf = dma_map_single(chan_dev, msgs->buf,
     dma->dma_len, dma->dma_data_dir);
 if (dma_mapping_error(chan_dev, dma->dma_buf)) {
  dev_err(dev, "DMA mapping failed\n");
  goto err_map;
 }

 txdesc = dmaengine_prep_slave_single(dma->chan_using, dma->dma_buf,
     dma->dma_len, dma->dma_transfer_dir,
     DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
 if (!txdesc) {
  dev_err(dev, "Not able to get desc for DMA xfer\n");
  goto err_desc;
 }

 reinit_completion(&dma->cmd_complete);
 txdesc->callback = i2c_imx_dma_callback;
 txdesc->callback_param = i2c_imx;
 if (dma_submit_error(dmaengine_submit(txdesc))) {
  dev_err(dev, "DMA submit failed\n");
  goto err_submit;
 }

 dma_async_issue_pending(dma->chan_using);
 return 0;

err_submit:
 dmaengine_terminate_all(dma->chan_using);
err_desc:
 dma_unmap_single(chan_dev, dma->dma_buf,
   dma->dma_len, dma->dma_data_dir);
err_map:
 return -EINVAL;
}

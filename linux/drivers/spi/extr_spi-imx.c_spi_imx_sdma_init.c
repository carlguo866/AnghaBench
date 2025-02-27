
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct spi_master {int max_dma_len; int can_dma; int * dma_rx; int * dma_tx; } ;
struct TYPE_6__ {TYPE_2__* master; } ;
struct spi_imx_data {int wml; TYPE_3__ bitbang; int dma_tx_completion; int dma_rx_completion; TYPE_1__* devtype_data; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int fifo_size; } ;


 scalar_t__ IS_ERR (int *) ;
 int MAX_SDMA_BD_BYTES ;
 int PTR_ERR (int *) ;
 int SPI_MASTER_MUST_RX ;
 int SPI_MASTER_MUST_TX ;
 int dev_dbg (struct device*,char*,int) ;
 void* dma_request_slave_channel_reason (struct device*,char*) ;
 int init_completion (int *) ;
 scalar_t__ of_machine_is_compatible (char*) ;
 int spi_imx_can_dma ;
 int spi_imx_sdma_exit (struct spi_imx_data*) ;

__attribute__((used)) static int spi_imx_sdma_init(struct device *dev, struct spi_imx_data *spi_imx,
        struct spi_master *master)
{
 int ret;


 if (of_machine_is_compatible("fsl,imx6dl"))
  return 0;

 spi_imx->wml = spi_imx->devtype_data->fifo_size / 2;


 master->dma_tx = dma_request_slave_channel_reason(dev, "tx");
 if (IS_ERR(master->dma_tx)) {
  ret = PTR_ERR(master->dma_tx);
  dev_dbg(dev, "can't get the TX DMA channel, error %d!\n", ret);
  master->dma_tx = ((void*)0);
  goto err;
 }


 master->dma_rx = dma_request_slave_channel_reason(dev, "rx");
 if (IS_ERR(master->dma_rx)) {
  ret = PTR_ERR(master->dma_rx);
  dev_dbg(dev, "can't get the RX DMA channel, error %d\n", ret);
  master->dma_rx = ((void*)0);
  goto err;
 }

 init_completion(&spi_imx->dma_rx_completion);
 init_completion(&spi_imx->dma_tx_completion);
 master->can_dma = spi_imx_can_dma;
 master->max_dma_len = MAX_SDMA_BD_BYTES;
 spi_imx->bitbang.master->flags = SPI_MASTER_MUST_RX |
      SPI_MASTER_MUST_TX;

 return 0;
err:
 spi_imx_sdma_exit(spi_imx);
 return ret;
}

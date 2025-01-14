
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int rx_len; int fragmens_len; } ;
struct sprd_spi {int trans_mode; int hw_mode; int (* write_bufs ) (struct sprd_spi*,int ) ;TYPE_1__ dma; int xfer_completion; int * dev; int trans_len; } ;
struct spi_transfer {int len; } ;
struct spi_device {int dev; int master; } ;


 int SPI_3WIRE ;
 int SPI_TX_DUAL ;
 int SPRD_SPI_RX_MODE ;
 int SPRD_SPI_TX_MODE ;
 int dev_err (int *,char*,int) ;
 int reinit_completion (int *) ;
 struct sprd_spi* spi_master_get_devdata (int ) ;
 int sprd_spi_dma_enable (struct sprd_spi*,int) ;
 int sprd_spi_dma_rx_config (struct sprd_spi*,struct spi_transfer*) ;
 int sprd_spi_dma_tx_config (struct sprd_spi*,struct spi_transfer*) ;
 int sprd_spi_enter_idle (struct sprd_spi*) ;
 int sprd_spi_irq_disable (struct sprd_spi*) ;
 int sprd_spi_irq_enable (struct sprd_spi*) ;
 int sprd_spi_rx_req (struct sprd_spi*) ;
 int sprd_spi_set_rx_length (struct sprd_spi*,int ) ;
 int sprd_spi_set_tx_length (struct sprd_spi*,int ) ;
 int sprd_spi_tx_req (struct sprd_spi*) ;
 int stub1 (struct sprd_spi*,int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int sprd_spi_dma_txrx_bufs(struct spi_device *sdev,
      struct spi_transfer *t)
{
 struct sprd_spi *ss = spi_master_get_devdata(sdev->master);
 u32 trans_len = ss->trans_len;
 int ret, write_size = 0;

 reinit_completion(&ss->xfer_completion);
 sprd_spi_irq_enable(ss);
 if (ss->trans_mode & SPRD_SPI_TX_MODE) {
  write_size = sprd_spi_dma_tx_config(ss, t);
  sprd_spi_set_tx_length(ss, trans_len);





  if (ss->hw_mode & SPI_3WIRE || ss->hw_mode & SPI_TX_DUAL)
   sprd_spi_tx_req(ss);
 } else {
  sprd_spi_set_rx_length(ss, trans_len);





  if (ss->hw_mode & SPI_3WIRE || ss->hw_mode & SPI_TX_DUAL)
   sprd_spi_rx_req(ss);
  else
   write_size = ss->write_bufs(ss, trans_len);
 }

 if (write_size < 0) {
  ret = write_size;
  dev_err(ss->dev, "failed to write, ret = %d\n", ret);
  goto trans_complete;
 }

 if (ss->trans_mode & SPRD_SPI_RX_MODE) {







  ss->dma.rx_len = t->len > ss->dma.fragmens_len ?
   (t->len - t->len % ss->dma.fragmens_len) :
    t->len;
  ret = sprd_spi_dma_rx_config(ss, t);
  if (ret < 0) {
   dev_err(&sdev->dev,
    "failed to configure rx DMA, ret = %d\n", ret);
   goto trans_complete;
  }
 }

 sprd_spi_dma_enable(ss, 1);
 wait_for_completion(&(ss->xfer_completion));

 if (ss->trans_mode & SPRD_SPI_TX_MODE)
  ret = write_size;
 else
  ret = ss->dma.rx_len;

trans_complete:
 sprd_spi_dma_enable(ss, 0);
 sprd_spi_enter_idle(ss);
 sprd_spi_irq_disable(ss);

 return ret;
}

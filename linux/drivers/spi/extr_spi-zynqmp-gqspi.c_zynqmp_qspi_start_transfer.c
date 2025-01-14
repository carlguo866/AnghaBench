
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct zynqmp_qspi {int genfifocs; int genfifobus; scalar_t__ mode; int dma_rx_bytes; int genfifoentry; int * rxbuf; int * txbuf; } ;
struct spi_transfer {int len; int * rx_buf; int * tx_buf; } ;
struct spi_master {int dummy; } ;
struct spi_device {int dummy; } ;


 int GQSPI_CFG_START_GEN_FIFO_MASK ;
 int GQSPI_CONFIG_OFST ;
 int GQSPI_GENFIFO_EXP ;
 int GQSPI_GENFIFO_EXP_START ;
 int GQSPI_GENFIFO_IMM_DATA_MASK ;
 int GQSPI_GEN_FIFO_OFST ;
 int GQSPI_IER_GENFIFOEMPTY_MASK ;
 int GQSPI_IER_OFST ;
 int GQSPI_IER_RXEMPTY_MASK ;
 int GQSPI_IER_RXNEMPTY_MASK ;
 int GQSPI_IER_TXEMPTY_MASK ;
 int GQSPI_IER_TXNOT_FULL_MASK ;
 scalar_t__ GQSPI_MODE_DMA ;
 scalar_t__ GQSPI_MODE_IO ;
 int GQSPI_QSPIDMA_DST_I_EN_DONE_MASK ;
 int GQSPI_QSPIDMA_DST_I_EN_OFST ;
 struct zynqmp_qspi* spi_master_get_devdata (struct spi_master*) ;
 int zynqmp_gqspi_read (struct zynqmp_qspi*,int ) ;
 int zynqmp_gqspi_write (struct zynqmp_qspi*,int ,int) ;
 int zynqmp_qspi_setup_transfer (struct spi_device*,struct spi_transfer*) ;
 int zynqmp_qspi_txrxsetup (struct zynqmp_qspi*,struct spi_transfer*,int*) ;

__attribute__((used)) static int zynqmp_qspi_start_transfer(struct spi_master *master,
          struct spi_device *qspi,
          struct spi_transfer *transfer)
{
 struct zynqmp_qspi *xqspi = spi_master_get_devdata(master);
 u32 genfifoentry = 0x0, transfer_len;

 xqspi->txbuf = transfer->tx_buf;
 xqspi->rxbuf = transfer->rx_buf;

 zynqmp_qspi_setup_transfer(qspi, transfer);

 genfifoentry |= xqspi->genfifocs;
 genfifoentry |= xqspi->genfifobus;

 zynqmp_qspi_txrxsetup(xqspi, transfer, &genfifoentry);

 if (xqspi->mode == GQSPI_MODE_DMA)
  transfer_len = xqspi->dma_rx_bytes;
 else
  transfer_len = transfer->len;

 xqspi->genfifoentry = genfifoentry;
 if ((transfer_len) < GQSPI_GENFIFO_IMM_DATA_MASK) {
  genfifoentry &= ~GQSPI_GENFIFO_IMM_DATA_MASK;
  genfifoentry |= transfer_len;
  zynqmp_gqspi_write(xqspi, GQSPI_GEN_FIFO_OFST, genfifoentry);
 } else {
  int tempcount = transfer_len;
  u32 exponent = 8;
  u8 imm_data = tempcount & 0xFF;

  tempcount &= ~(tempcount & 0xFF);

  if (tempcount != 0) {

   genfifoentry |= GQSPI_GENFIFO_EXP;
   while (tempcount != 0) {
    if (tempcount & GQSPI_GENFIFO_EXP_START) {
     genfifoentry &=
         ~GQSPI_GENFIFO_IMM_DATA_MASK;
     genfifoentry |= exponent;
     zynqmp_gqspi_write(xqspi,
          GQSPI_GEN_FIFO_OFST,
          genfifoentry);
    }
    tempcount = tempcount >> 1;
    exponent++;
   }
  }
  if (imm_data != 0) {
   genfifoentry &= ~GQSPI_GENFIFO_EXP;
   genfifoentry &= ~GQSPI_GENFIFO_IMM_DATA_MASK;
   genfifoentry |= (u8) (imm_data & 0xFF);
   zynqmp_gqspi_write(xqspi,
        GQSPI_GEN_FIFO_OFST, genfifoentry);
  }
 }

 if ((xqspi->mode == GQSPI_MODE_IO) &&
   (xqspi->rxbuf != ((void*)0))) {

  zynqmp_gqspi_write(xqspi, GQSPI_GEN_FIFO_OFST, 0x0);
 }


 zynqmp_gqspi_write(xqspi, GQSPI_CONFIG_OFST,
      zynqmp_gqspi_read(xqspi, GQSPI_CONFIG_OFST) |
      GQSPI_CFG_START_GEN_FIFO_MASK);

 if (xqspi->txbuf != ((void*)0))

  zynqmp_gqspi_write(xqspi, GQSPI_IER_OFST,
       GQSPI_IER_TXEMPTY_MASK |
     GQSPI_IER_GENFIFOEMPTY_MASK |
     GQSPI_IER_TXNOT_FULL_MASK);

 if (xqspi->rxbuf != ((void*)0)) {

  if (xqspi->mode == GQSPI_MODE_DMA) {

   zynqmp_gqspi_write(xqspi,
     GQSPI_QSPIDMA_DST_I_EN_OFST,
     GQSPI_QSPIDMA_DST_I_EN_DONE_MASK);
  } else {
   zynqmp_gqspi_write(xqspi, GQSPI_IER_OFST,
     GQSPI_IER_GENFIFOEMPTY_MASK |
     GQSPI_IER_RXNEMPTY_MASK |
     GQSPI_IER_RXEMPTY_MASK);
  }
 }

 return transfer->len;
}

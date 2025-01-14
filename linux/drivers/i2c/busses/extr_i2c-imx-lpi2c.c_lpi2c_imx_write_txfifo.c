
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpi2c_imx_struct {unsigned int txfifosize; scalar_t__ delivered; scalar_t__ msglen; unsigned int* tx_buf; int complete; scalar_t__ base; } ;


 scalar_t__ LPI2C_MFSR ;
 scalar_t__ LPI2C_MTDR ;
 int MIER_NDIE ;
 int MIER_TDIE ;
 int complete (int *) ;
 int lpi2c_imx_intctrl (struct lpi2c_imx_struct*,int) ;
 int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void lpi2c_imx_write_txfifo(struct lpi2c_imx_struct *lpi2c_imx)
{
 unsigned int data, txcnt;

 txcnt = readl(lpi2c_imx->base + LPI2C_MFSR) & 0xff;

 while (txcnt < lpi2c_imx->txfifosize) {
  if (lpi2c_imx->delivered == lpi2c_imx->msglen)
   break;

  data = lpi2c_imx->tx_buf[lpi2c_imx->delivered++];
  writel(data, lpi2c_imx->base + LPI2C_MTDR);
  txcnt++;
 }

 if (lpi2c_imx->delivered < lpi2c_imx->msglen)
  lpi2c_imx_intctrl(lpi2c_imx, MIER_TDIE | MIER_NDIE);
 else
  complete(&lpi2c_imx->complete);
}

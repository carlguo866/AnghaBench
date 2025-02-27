
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mmc_data {int flags; int len; scalar_t__ data; } ;
struct jz4780_mmc_softc {int sc_resid; } ;


 int JZ_DATA_FIFO_EMPTY ;
 int JZ_DATA_FIFO_FULL ;
 int JZ_INT_RXFIFO_RD_REQ ;
 int JZ_INT_TXFIFO_WR_REQ ;
 int JZ_MMC_READ_4 (struct jz4780_mmc_softc*,int ) ;
 int JZ_MMC_WRITE_4 (struct jz4780_mmc_softc*,int ,int) ;
 int JZ_MSC_IMASK ;
 int JZ_MSC_RXFIFO ;
 int JZ_MSC_STAT ;
 int JZ_MSC_TXFIFO ;
 int MMC_DATA_WRITE ;

__attribute__((used)) static int
jz4780_mmc_pio_transfer(struct jz4780_mmc_softc *sc, struct mmc_data *data)
{
 uint32_t mask, *buf;
 int i, write;

 buf = (uint32_t *)data->data;
 write = (data->flags & MMC_DATA_WRITE) ? 1 : 0;
 mask = write ? JZ_DATA_FIFO_FULL : JZ_DATA_FIFO_EMPTY;
 for (i = sc->sc_resid; i < (data->len >> 2); i++) {
  if ((JZ_MMC_READ_4(sc, JZ_MSC_STAT) & mask))
   return (1);
  if (write)
   JZ_MMC_WRITE_4(sc, JZ_MSC_TXFIFO, buf[i]);
  else
   buf[i] = JZ_MMC_READ_4(sc, JZ_MSC_RXFIFO);
  sc->sc_resid = i + 1;
 }


 mask = JZ_MMC_READ_4(sc, JZ_MSC_IMASK);
 mask |= (JZ_INT_TXFIFO_WR_REQ | JZ_INT_RXFIFO_RD_REQ);
 JZ_MMC_WRITE_4(sc, JZ_MSC_IMASK, mask);
 return (0);
}

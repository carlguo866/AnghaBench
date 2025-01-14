
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct st_i2c_client {int xfered; } ;
struct st_i2c_dev {scalar_t__ base; struct st_i2c_client client; } ;


 scalar_t__ SSC_STA ;
 int SSC_STA_TX_FIFO_FULL ;
 int SSC_TXFIFO_SIZE ;
 scalar_t__ SSC_TX_FSTAT ;
 int SSC_TX_FSTAT_STATUS ;
 int readl_relaxed (scalar_t__) ;
 int st_i2c_write_tx_fifo (struct st_i2c_dev*,int) ;

__attribute__((used)) static void st_i2c_rd_fill_tx_fifo(struct st_i2c_dev *i2c_dev, int max)
{
 struct st_i2c_client *c = &i2c_dev->client;
 u32 tx_fstat, sta;
 int i;

 sta = readl_relaxed(i2c_dev->base + SSC_STA);
 if (sta & SSC_STA_TX_FIFO_FULL)
  return;

 tx_fstat = readl_relaxed(i2c_dev->base + SSC_TX_FSTAT);
 tx_fstat &= SSC_TX_FSTAT_STATUS;

 if (max < (SSC_TXFIFO_SIZE - tx_fstat))
  i = max;
 else
  i = SSC_TXFIFO_SIZE - tx_fstat;

 for (; i > 0; i--, c->xfered++)
  st_i2c_write_tx_fifo(i2c_dev, 0xff);
}

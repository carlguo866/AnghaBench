
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_spi {int tx_buf; scalar_t__ base; } ;


 scalar_t__ SPRD_SPI_TXD ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int sprd_spi_write_bufs_u32(struct sprd_spi *ss, u32 len)
{
 u32 *tx_p = (u32 *)ss->tx_buf;
 int i;

 for (i = 0; i < len; i++)
  writel_relaxed(tx_p[i], ss->base + SPRD_SPI_TXD);

 ss->tx_buf += i << 2;
 return i << 2;
}

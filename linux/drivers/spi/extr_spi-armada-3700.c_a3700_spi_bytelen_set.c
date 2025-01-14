
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct a3700_spi {unsigned int byte_len; } ;


 int A3700_SPI_BYTE_LEN ;
 int A3700_SPI_IF_CFG_REG ;
 int spireg_read (struct a3700_spi*,int ) ;
 int spireg_write (struct a3700_spi*,int ,int ) ;

__attribute__((used)) static void a3700_spi_bytelen_set(struct a3700_spi *a3700_spi, unsigned int len)
{
 u32 val;

 val = spireg_read(a3700_spi, A3700_SPI_IF_CFG_REG);
 if (len == 4)
  val |= A3700_SPI_BYTE_LEN;
 else
  val &= ~A3700_SPI_BYTE_LEN;
 spireg_write(a3700_spi, A3700_SPI_IF_CFG_REG, val);

 a3700_spi->byte_len = len;
}

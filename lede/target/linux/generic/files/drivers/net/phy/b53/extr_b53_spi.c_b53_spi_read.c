
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;
struct b53_device {struct spi_device* priv; } ;


 int B53_SPI_DATA ;
 int b53_prepare_reg_access (struct spi_device*,int ) ;
 int b53_spi_prepare_reg_read (struct spi_device*,int ) ;
 int b53_spi_read_reg (struct spi_device*,int ,int *,unsigned int) ;

__attribute__((used)) static int b53_spi_read(struct b53_device *dev, u8 page, u8 reg, u8 *data,
   unsigned len)
{
 struct spi_device *spi = dev->priv;
 int ret;

 ret = b53_prepare_reg_access(spi, page);
 if (ret)
  return ret;

 ret = b53_spi_prepare_reg_read(spi, reg);
 if (ret)
  return ret;

 return b53_spi_read_reg(spi, B53_SPI_DATA, data, len);
}

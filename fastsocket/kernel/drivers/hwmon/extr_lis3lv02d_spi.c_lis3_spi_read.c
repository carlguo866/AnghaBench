
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct spi_device {int dummy; } ;
struct lis3lv02d {struct spi_device* bus_priv; } ;


 int EINVAL ;
 int LIS3_SPI_READ ;
 int spi_w8r8 (struct spi_device*,int) ;

__attribute__((used)) static int lis3_spi_read(struct lis3lv02d *lis3, int reg, u8 *v)
{
 struct spi_device *spi = lis3->bus_priv;
 int ret = spi_w8r8(spi, reg | LIS3_SPI_READ);
 if (ret < 0)
  return -EINVAL;

 *v = (u8) ret;
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;


 int INST_READ_BM ;
 int spi_w8r8 (struct spi_device*,int) ;

__attribute__((used)) static int ads7871_read_reg8(struct spi_device *spi, int reg)
{
 int ret;
 reg = reg | INST_READ_BM;
 ret = spi_w8r8(spi, reg);
 return ret;
}

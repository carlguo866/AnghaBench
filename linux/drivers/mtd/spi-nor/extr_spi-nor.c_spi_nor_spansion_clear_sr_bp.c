
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_nor {int* bouncebuf; int dev; } ;


 int CR_QUAD_EN_SPAN ;
 int SR_BP0 ;
 int SR_BP1 ;
 int SR_BP2 ;
 int dev_err (int ,char*) ;
 int read_cr (struct spi_nor*) ;
 int read_sr (struct spi_nor*) ;
 int spi_nor_clear_sr_bp (struct spi_nor*) ;
 int write_sr_cr (struct spi_nor*,int*) ;

__attribute__((used)) static int spi_nor_spansion_clear_sr_bp(struct spi_nor *nor)
{
 int ret;
 u8 mask = SR_BP2 | SR_BP1 | SR_BP0;
 u8 *sr_cr = nor->bouncebuf;


 ret = read_cr(nor);
 if (ret < 0) {
  dev_err(nor->dev,
   "error while reading configuration register\n");
  return ret;
 }





 if (ret & CR_QUAD_EN_SPAN) {
  sr_cr[1] = ret;

  ret = read_sr(nor);
  if (ret < 0) {
   dev_err(nor->dev,
    "error while reading status register\n");
   return ret;
  }
  sr_cr[0] = ret & ~mask;

  ret = write_sr_cr(nor, sr_cr);
  if (ret)
   dev_err(nor->dev, "16-bit write register failed\n");
  return ret;
 }





 return spi_nor_clear_sr_bp(nor);
}

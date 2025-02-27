
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regmap {int dummy; } ;


 int EIO ;
 int IIO_VAL_INT ;
 scalar_t__ regmap_bulk_read (struct regmap*,unsigned long,int*,int) ;

__attribute__((used)) static int axp288_adc_read_channel(int *val, unsigned long address,
    struct regmap *regmap)
{
 u8 buf[2];

 if (regmap_bulk_read(regmap, address, buf, 2))
  return -EIO;
 *val = (buf[0] << 4) + ((buf[1] >> 4) & 0x0F);

 return IIO_VAL_INT;
}

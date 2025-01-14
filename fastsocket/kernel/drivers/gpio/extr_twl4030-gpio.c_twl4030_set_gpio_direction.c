
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BIT (int) ;
 int REG_GPIODATADIR1 ;
 int gpio_lock ;
 int gpio_twl4030_read (int) ;
 int gpio_twl4030_write (int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int twl4030_set_gpio_direction(int gpio, int is_input)
{
 u8 d_bnk = gpio >> 3;
 u8 d_msk = BIT(gpio & 0x7);
 u8 reg = 0;
 u8 base = REG_GPIODATADIR1 + d_bnk;
 int ret = 0;

 mutex_lock(&gpio_lock);
 ret = gpio_twl4030_read(base);
 if (ret >= 0) {
  if (is_input)
   reg = ret & ~d_msk;
  else
   reg = ret | d_msk;

  ret = gpio_twl4030_write(base, reg);
 }
 mutex_unlock(&gpio_lock);
 return ret;
}

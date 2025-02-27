
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u32 ;


 int REG_GPIOPUPDCTR1 ;
 int TWL4030_MODULE_GPIO ;
 int twl_i2c_write (int ,int*,int ,int) ;

__attribute__((used)) static int gpio_twl4030_pulls(u32 ups, u32 downs)
{
 u8 message[5];
 unsigned i, gpio_bit;




 for (gpio_bit = 1, i = 0; i < 5; i++) {
  u8 bit_mask;
  unsigned j;

  for (bit_mask = 0, j = 0; j < 8; j += 2, gpio_bit <<= 1) {
   if (ups & gpio_bit)
    bit_mask |= 1 << (j + 1);
   else if (downs & gpio_bit)
    bit_mask |= 1 << (j + 0);
  }
  message[i] = bit_mask;
 }

 return twl_i2c_write(TWL4030_MODULE_GPIO, message,
    REG_GPIOPUPDCTR1, 5);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int ICE1712_IREG_GPIO_DATA ;
 unsigned char ICE1712_STDSP24_CLOCK_BIT ;
 int snd_ice1712_write (struct snd_ice1712*,int ,unsigned char) ;
 int udelay (int) ;

__attribute__((used)) static void snd_ice1712_stdsp24_gpio_write(struct snd_ice1712 *ice, unsigned char byte)
{
 byte |= ICE1712_STDSP24_CLOCK_BIT;
 udelay(100);
 snd_ice1712_write(ice, ICE1712_IREG_GPIO_DATA, byte);
 byte &= ~ICE1712_STDSP24_CLOCK_BIT;
 udelay(100);
 snd_ice1712_write(ice, ICE1712_IREG_GPIO_DATA, byte);
 byte |= ICE1712_STDSP24_CLOCK_BIT;
 udelay(100);
 snd_ice1712_write(ice, ICE1712_IREG_GPIO_DATA, byte);
}

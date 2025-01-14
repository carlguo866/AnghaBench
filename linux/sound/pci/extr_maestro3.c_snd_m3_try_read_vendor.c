
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_m3 {int dummy; } ;


 int AC97_VENDOR_ID1 ;
 scalar_t__ snd_m3_ac97_wait (struct snd_m3*) ;
 int snd_m3_inw (struct snd_m3*,int) ;
 int snd_m3_outb (struct snd_m3*,int,int) ;

__attribute__((used)) static int snd_m3_try_read_vendor(struct snd_m3 *chip)
{
 u16 ret;

 if (snd_m3_ac97_wait(chip))
  return 1;

 snd_m3_outb(chip, 0x80 | (AC97_VENDOR_ID1 & 0x7f), 0x30);

 if (snd_m3_ac97_wait(chip))
  return 1;

 ret = snd_m3_inw(chip, 0x32);

 return (ret == 0) || (ret == 0xffff);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {unsigned int private_value; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_ca0106 {unsigned int* spi_dac_reg; } ;


 int EINVAL ;
 unsigned int SPI_REG_MASK ;
 unsigned int SPI_REG_SHIFT ;
 int snd_ca0106_spi_write (struct snd_ca0106*,unsigned int) ;
 struct snd_ca0106* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int spi_mute_put(struct snd_kcontrol *kcontrol,
   struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ca0106 *emu = snd_kcontrol_chip(kcontrol);
 unsigned int reg = kcontrol->private_value >> SPI_REG_SHIFT;
 unsigned int bit = kcontrol->private_value & SPI_REG_MASK;
 int ret;

 ret = emu->spi_dac_reg[reg] & bit;
 if (ucontrol->value.integer.value[0]) {
  if (!ret)
   return 0;
  emu->spi_dac_reg[reg] &= ~bit;
 } else {
  if (ret)
   return 0;
  emu->spi_dac_reg[reg] |= bit;
 }

 ret = snd_ca0106_spi_write(emu, emu->spi_dac_reg[reg]);
 return ret ? -EINVAL : 1;
}

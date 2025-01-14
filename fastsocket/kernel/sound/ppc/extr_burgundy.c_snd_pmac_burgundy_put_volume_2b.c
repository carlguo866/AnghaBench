
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pmac {int dummy; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {long* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 unsigned int BASE2ADDR (int) ;
 struct snd_pmac* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_pmac_burgundy_read_volume_2b (struct snd_pmac*,unsigned int,long*,int) ;
 int snd_pmac_burgundy_write_volume_2b (struct snd_pmac*,unsigned int,long*,int) ;

__attribute__((used)) static int snd_pmac_burgundy_put_volume_2b(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct snd_pmac *chip = snd_kcontrol_chip(kcontrol);
 unsigned int addr = BASE2ADDR(kcontrol->private_value & 0xff);
 int off = kcontrol->private_value & 0x300;
 long nvoices[2];

 snd_pmac_burgundy_write_volume_2b(chip, addr,
   ucontrol->value.integer.value, off);
 snd_pmac_burgundy_read_volume_2b(chip, addr, nvoices, off);
 return (nvoices[0] != ucontrol->value.integer.value[0] ||
  nvoices[1] != ucontrol->value.integer.value[1]);
}

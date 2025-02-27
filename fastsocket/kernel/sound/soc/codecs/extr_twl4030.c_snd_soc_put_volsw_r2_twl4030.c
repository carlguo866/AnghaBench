
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_mixer_control {unsigned int reg; unsigned int rreg; unsigned int shift; int max; } ;
struct snd_soc_codec {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int fls (int) ;
 struct snd_soc_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_soc_update_bits (struct snd_soc_codec*,unsigned int,unsigned short,unsigned short) ;

__attribute__((used)) static int snd_soc_put_volsw_r2_twl4030(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct soc_mixer_control *mc =
  (struct soc_mixer_control *)kcontrol->private_value;
 struct snd_soc_codec *codec = snd_kcontrol_chip(kcontrol);
 unsigned int reg = mc->reg;
 unsigned int reg2 = mc->rreg;
 unsigned int shift = mc->shift;
 int max = mc->max;
 int mask = (1 << fls(max)) - 1;
 int err;
 unsigned short val, val2, val_mask;

 val_mask = mask << shift;
 val = (ucontrol->value.integer.value[0] & mask);
 val2 = (ucontrol->value.integer.value[1] & mask);

 if (val)
  val = max + 1 - val;
 if (val2)
  val2 = max + 1 - val2;

 val = val << shift;
 val2 = val2 << shift;

 err = snd_soc_update_bits(codec, reg, val_mask, val);
 if (err < 0)
  return err;

 err = snd_soc_update_bits(codec, reg2, val_mask, val2);
 return err;
}

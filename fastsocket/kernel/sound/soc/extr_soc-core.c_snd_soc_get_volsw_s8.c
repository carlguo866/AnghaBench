
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_mixer_control {unsigned int reg; int min; } ;
struct snd_soc_codec {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {char* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct snd_soc_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_soc_read (struct snd_soc_codec*,unsigned int) ;

int snd_soc_get_volsw_s8(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct soc_mixer_control *mc =
  (struct soc_mixer_control *)kcontrol->private_value;
 struct snd_soc_codec *codec = snd_kcontrol_chip(kcontrol);
 unsigned int reg = mc->reg;
 int min = mc->min;
 int val = snd_soc_read(codec, reg);

 ucontrol->value.integer.value[0] =
  ((signed char)(val & 0xff))-min;
 ucontrol->value.integer.value[1] =
  ((signed char)((val >> 8) & 0xff))-min;
 return 0;
}

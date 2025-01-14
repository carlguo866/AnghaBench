
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_codec {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 scalar_t__ n810_dmic_func ;
 int n810_ext_control (struct snd_soc_codec*) ;
 struct snd_soc_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int n810_set_input(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_codec *codec = snd_kcontrol_chip(kcontrol);

 if (n810_dmic_func == ucontrol->value.integer.value[0])
  return 0;

 n810_dmic_func = ucontrol->value.integer.value[0];
 n810_ext_control(codec);

 return 1;
}

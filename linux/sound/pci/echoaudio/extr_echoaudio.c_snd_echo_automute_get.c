
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct echoaudio {int digital_in_automute; } ;


 struct echoaudio* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_echo_automute_get(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct echoaudio *chip = snd_kcontrol_chip(kcontrol);

 ucontrol->value.integer.value[0] = chip->digital_in_automute;
 return 0;
}

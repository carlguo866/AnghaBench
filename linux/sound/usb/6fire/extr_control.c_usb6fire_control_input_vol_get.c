
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct control_runtime {scalar_t__* input_vol; } ;


 struct control_runtime* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int usb6fire_control_input_vol_get(struct snd_kcontrol *kcontrol,
  struct snd_ctl_elem_value *ucontrol)
{
 struct control_runtime *rt = snd_kcontrol_chip(kcontrol);

 ucontrol->value.integer.value[0] = rt->input_vol[0] + 15;
 ucontrol->value.integer.value[1] = rt->input_vol[1] + 15;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {void** value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int get_ec_mic_gain (struct snd_soc_component*,void**,void**) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int mic_gain_get(struct snd_kcontrol *kcontrol,
   struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component =
  snd_soc_kcontrol_component(kcontrol);
 u8 left, right;
 int ret;

 ret = get_ec_mic_gain(component, &left, &right);
 if (ret)
  return ret;

 ucontrol->value.integer.value[0] = left;
 ucontrol->value.integer.value[1] = right;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct da7219_priv {int alc_en; } ;


 int da7219_alc_calib (struct snd_soc_component*) ;
 struct da7219_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;
 int snd_soc_put_volsw (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

__attribute__((used)) static int da7219_alc_sw_put(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct da7219_priv *da7219 = snd_soc_component_get_drvdata(component);



 if ((ucontrol->value.integer.value[0]) && (!da7219->alc_en)) {
  da7219_alc_calib(component);
  da7219->alc_en = 1;
 } else {
  da7219->alc_en = 0;
 }

 return snd_soc_put_volsw(kcontrol, ucontrol);
}

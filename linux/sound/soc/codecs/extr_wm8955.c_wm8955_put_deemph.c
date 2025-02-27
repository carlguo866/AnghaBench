
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wm8955_priv {unsigned int deemph; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EINVAL ;
 struct wm8955_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;
 int wm8955_set_deemph (struct snd_soc_component*) ;

__attribute__((used)) static int wm8955_put_deemph(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct wm8955_priv *wm8955 = snd_soc_component_get_drvdata(component);
 unsigned int deemph = ucontrol->value.integer.value[0];

 if (deemph > 1)
  return -EINVAL;

 wm8955->deemph = deemph;

 return wm8955_set_deemph(component);
}

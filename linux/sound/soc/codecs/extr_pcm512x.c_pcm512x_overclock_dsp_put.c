
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct pcm512x_priv {int overclock_dsp; } ;


 int EBUSY ;


 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct pcm512x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int pcm512x_overclock_dsp_put(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct pcm512x_priv *pcm512x = snd_soc_component_get_drvdata(component);

 switch (snd_soc_component_get_bias_level(component)) {
 case 129:
 case 128:
  break;
 default:
  return -EBUSY;
 }

 pcm512x->overclock_dsp = ucontrol->value.integer.value[0];
 return 0;
}

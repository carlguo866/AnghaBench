
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
struct rt5677_priv {int dsp_vad_en; } ;


 scalar_t__ SND_SOC_BIAS_OFF ;
 int rt5677_set_dsp_vad (struct snd_soc_component*,int) ;
 struct snd_soc_component* snd_kcontrol_chip (struct snd_kcontrol*) ;
 scalar_t__ snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct rt5677_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int rt5677_dsp_vad_put(struct snd_kcontrol *kcontrol,
  struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_kcontrol_chip(kcontrol);
 struct rt5677_priv *rt5677 = snd_soc_component_get_drvdata(component);

 rt5677->dsp_vad_en = !!ucontrol->value.integer.value[0];

 if (snd_soc_component_get_bias_level(component) == SND_SOC_BIAS_OFF)
  rt5677_set_dsp_vad(component, rt5677->dsp_vad_en);

 return 0;
}

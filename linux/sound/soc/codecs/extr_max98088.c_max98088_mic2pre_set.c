
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct max98088_priv {unsigned int mic2pre; } ;


 int M98088_MICPRE_MASK ;
 int M98088_MICPRE_SHIFT ;
 int M98088_REG_36_LVL_MIC2 ;
 struct max98088_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int max98088_mic2pre_set(struct snd_kcontrol *kcontrol,
                               struct snd_ctl_elem_value *ucontrol)
{
       struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
       struct max98088_priv *max98088 = snd_soc_component_get_drvdata(component);
       unsigned int sel = ucontrol->value.integer.value[0];

       max98088->mic2pre = sel;
       snd_soc_component_update_bits(component, M98088_REG_36_LVL_MIC2, M98088_MICPRE_MASK,
               (1+sel)<<M98088_MICPRE_SHIFT);

       return 0;
}

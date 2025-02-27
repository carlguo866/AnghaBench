
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct max9759 {size_t gain; TYPE_3__* gpiod_gain; } ;
struct TYPE_6__ {int * desc; } ;


 int EINVAL ;
 int gpiod_set_value_cansleep (int ,int ) ;
 struct max9759* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;
 int ** speaker_gain_table ;

__attribute__((used)) static int speaker_gain_control_put(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *c = snd_soc_kcontrol_component(kcontrol);
 struct max9759 *priv = snd_soc_component_get_drvdata(c);

 if (ucontrol->value.integer.value[0] > 3)
  return -EINVAL;

 priv->gain = ucontrol->value.integer.value[0];


 gpiod_set_value_cansleep(priv->gpiod_gain->desc[0],
     speaker_gain_table[priv->gain][0]);

 gpiod_set_value_cansleep(priv->gpiod_gain->desc[1],
     speaker_gain_table[priv->gain][1]);

 return 1;
}

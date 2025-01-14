
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wm8904_priv {int drc_cfg; struct wm8904_pdata* pdata; } ;
struct wm8904_pdata {int num_drc_cfgs; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EINVAL ;
 struct wm8904_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;
 int wm8904_set_drc (struct snd_soc_component*) ;

__attribute__((used)) static int wm8904_put_drc_enum(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct wm8904_priv *wm8904 = snd_soc_component_get_drvdata(component);
 struct wm8904_pdata *pdata = wm8904->pdata;
 int value = ucontrol->value.enumerated.item[0];

 if (value >= pdata->num_drc_cfgs)
  return -EINVAL;

 wm8904->drc_cfg = value;

 wm8904_set_drc(component);

 return 0;
}

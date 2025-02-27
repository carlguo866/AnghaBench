
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wm8994_priv {int* hpf1_ena; int* hpf2_ena; scalar_t__* enh_eq_ena; int mbc_vss; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int dev_dbg (int ,char*,int) ;
 struct wm8994_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;
 scalar_t__ wm8958_dsp2_busy (struct wm8994_priv*,int) ;
 int wm8958_dsp_apply (struct snd_soc_component*,int,int) ;

__attribute__((used)) static int wm8958_hpf_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 int hpf = kcontrol->private_value;
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct wm8994_priv *wm8994 = snd_soc_component_get_drvdata(component);

 if (hpf < 3) {
  if (wm8994->hpf1_ena[hpf % 3] ==
      ucontrol->value.integer.value[0])
   return 0;
 } else {
  if (wm8994->hpf2_ena[hpf % 3] ==
      ucontrol->value.integer.value[0])
   return 0;
 }

 if (ucontrol->value.integer.value[0] > 1)
  return -EINVAL;

 if (!wm8994->mbc_vss)
  return -ENODEV;

 if (wm8958_dsp2_busy(wm8994, hpf % 3)) {
  dev_dbg(component->dev, "DSP2 active on %d already\n", hpf);
  return -EBUSY;
 }

 if (wm8994->enh_eq_ena[hpf % 3])
  return -EBUSY;

 if (hpf < 3)
  wm8994->hpf1_ena[hpf % 3] = ucontrol->value.integer.value[0];
 else
  wm8994->hpf2_ena[hpf % 3] = ucontrol->value.integer.value[0];

 wm8958_dsp_apply(component, hpf % 3, ucontrol->value.integer.value[0]);

 return 0;
}

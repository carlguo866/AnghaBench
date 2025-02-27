
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8994_priv {struct wm8994* wm8994; } ;
struct wm8994 {int type; } ;
struct snd_soc_dai {int id; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int EINVAL ;


 int WM8958_AIF3_CONTROL_1 ;
 int WM8994_AIF1_WL_MASK ;
 int params_width (struct snd_pcm_hw_params*) ;
 struct wm8994_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int,int ,int) ;

__attribute__((used)) static int wm8994_aif3_hw_params(struct snd_pcm_substream *substream,
     struct snd_pcm_hw_params *params,
     struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct wm8994_priv *wm8994 = snd_soc_component_get_drvdata(component);
 struct wm8994 *control = wm8994->wm8994;
 int aif1_reg;
 int aif1 = 0;

 switch (dai->id) {
 case 3:
  switch (control->type) {
  case 129:
  case 128:
   aif1_reg = WM8958_AIF3_CONTROL_1;
   break;
  default:
   return 0;
  }
  break;
 default:
  return 0;
 }

 switch (params_width(params)) {
 case 16:
  break;
 case 20:
  aif1 |= 0x20;
  break;
 case 24:
  aif1 |= 0x40;
  break;
 case 32:
  aif1 |= 0x60;
  break;
 default:
  return -EINVAL;
 }

 return snd_soc_component_update_bits(component, aif1_reg, WM8994_AIF1_WL_MASK, aif1);
}

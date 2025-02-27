
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8993_priv {int tdm_slots; int tdm_width; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;
 int WM8993_AIFADC_TDM ;
 int WM8993_AIFADC_TDM_CHAN ;
 int WM8993_AIFDAC_TDM ;
 int WM8993_AIFDAC_TDM_CHAN ;
 int WM8993_AUDIO_INTERFACE_1 ;
 int WM8993_AUDIO_INTERFACE_2 ;
 struct wm8993_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int wm8993_set_tdm_slot(struct snd_soc_dai *dai, unsigned int tx_mask,
          unsigned int rx_mask, int slots, int slot_width)
{
 struct snd_soc_component *component = dai->component;
 struct wm8993_priv *wm8993 = snd_soc_component_get_drvdata(component);
 int aif1 = 0;
 int aif2 = 0;


 if (slots == 0) {
  wm8993->tdm_slots = 0;
  goto out;
 }





 aif1 |= WM8993_AIFADC_TDM;
 aif2 |= WM8993_AIFDAC_TDM;

 switch (rx_mask) {
 case 3:
  break;
 case 0xc:
  aif1 |= WM8993_AIFADC_TDM_CHAN;
  break;
 default:
  return -EINVAL;
 }


 switch (tx_mask) {
 case 3:
  break;
 case 0xc:
  aif2 |= WM8993_AIFDAC_TDM_CHAN;
  break;
 default:
  return -EINVAL;
 }

out:
 wm8993->tdm_width = slot_width;
 wm8993->tdm_slots = slots / 2;

 snd_soc_component_update_bits(component, WM8993_AUDIO_INTERFACE_1,
       WM8993_AIFADC_TDM | WM8993_AIFADC_TDM_CHAN, aif1);
 snd_soc_component_update_bits(component, WM8993_AUDIO_INTERFACE_2,
       WM8993_AIFDAC_TDM | WM8993_AIFDAC_TDM_CHAN, aif2);

 return 0;
}

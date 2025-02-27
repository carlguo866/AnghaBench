
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8962_priv {struct snd_soc_jack* jack; } ;
struct snd_soc_jack {int dummy; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;


 int SND_JACK_BTN_0 ;
 int SND_JACK_MICROPHONE ;
 int WM8962_ADDITIONAL_CONTROL_4 ;
 int WM8962_INTERRUPT_STATUS_2_MASK ;
 int WM8962_MICDET_ENA ;
 int WM8962_MICD_EINT ;
 int WM8962_MICSCD_EINT ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct wm8962_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_dapm_disable_pin_unlocked (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_force_enable_pin_unlocked (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_mutex_lock (struct snd_soc_dapm_context*) ;
 int snd_soc_dapm_mutex_unlock (struct snd_soc_dapm_context*) ;
 int snd_soc_jack_report (struct snd_soc_jack*,int ,int) ;

int wm8962_mic_detect(struct snd_soc_component *component, struct snd_soc_jack *jack)
{
 struct wm8962_priv *wm8962 = snd_soc_component_get_drvdata(component);
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 int irq_mask, enable;

 wm8962->jack = jack;
 if (jack) {
  irq_mask = 0;
  enable = WM8962_MICDET_ENA;
 } else {
  irq_mask = WM8962_MICD_EINT | WM8962_MICSCD_EINT;
  enable = 0;
 }

 snd_soc_component_update_bits(component, WM8962_INTERRUPT_STATUS_2_MASK,
       WM8962_MICD_EINT | WM8962_MICSCD_EINT, irq_mask);
 snd_soc_component_update_bits(component, WM8962_ADDITIONAL_CONTROL_4,
       WM8962_MICDET_ENA, enable);


 snd_soc_jack_report(wm8962->jack, 0,
       SND_JACK_MICROPHONE | SND_JACK_BTN_0);

 snd_soc_dapm_mutex_lock(dapm);

 if (jack) {
  snd_soc_dapm_force_enable_pin_unlocked(dapm, "SYSCLK");
  snd_soc_dapm_force_enable_pin_unlocked(dapm, "MICBIAS");
 } else {
  snd_soc_dapm_disable_pin_unlocked(dapm, "SYSCLK");
  snd_soc_dapm_disable_pin_unlocked(dapm, "MICBIAS");
 }

 snd_soc_dapm_mutex_unlock(dapm);

 return 0;
}

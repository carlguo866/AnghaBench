
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct sgtl5000_priv {int micbias_resistor; } ;


 int SGTL5000_BIAS_R_MASK ;
 int SGTL5000_BIAS_R_SHIFT ;
 int SGTL5000_CHIP_MIC_CTRL ;


 struct sgtl5000_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int mic_bias_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct sgtl5000_priv *sgtl5000 = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 129:

  snd_soc_component_update_bits(component, SGTL5000_CHIP_MIC_CTRL,
   SGTL5000_BIAS_R_MASK,
   sgtl5000->micbias_resistor << SGTL5000_BIAS_R_SHIFT);
  break;

 case 128:
  snd_soc_component_update_bits(component, SGTL5000_CHIP_MIC_CTRL,
    SGTL5000_BIAS_R_MASK, 0);
  break;
 }
 return 0;
}

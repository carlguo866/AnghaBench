
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int regmap; } ;
struct snd_kcontrol {int dummy; } ;


 int MT6351_AUDENC_ANA_CON9 ;
 int RG_AUDMICBIAS0LOWPEN ;
 int RG_AUDMICBIAS0VREF ;


 int regmap_update_bits (int ,int ,int,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int mt_mic_bias_0_event(struct snd_soc_dapm_widget *w,
          struct snd_kcontrol *kcontrol,
          int event)
{
 struct snd_soc_component *cmpnt = snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 128:

  regmap_update_bits(cmpnt->regmap, MT6351_AUDENC_ANA_CON9,
       0x3 << RG_AUDMICBIAS0LOWPEN, 0x0);

  regmap_update_bits(cmpnt->regmap, MT6351_AUDENC_ANA_CON9,
       0x7 << RG_AUDMICBIAS0VREF,
       0x2 << RG_AUDMICBIAS0VREF);
  break;
 case 129:

  regmap_update_bits(cmpnt->regmap, MT6351_AUDENC_ANA_CON9,
       0x7 << RG_AUDMICBIAS0VREF,
       0x0 << RG_AUDMICBIAS0VREF);
  break;
 default:
  break;
 }
 return 0;
}

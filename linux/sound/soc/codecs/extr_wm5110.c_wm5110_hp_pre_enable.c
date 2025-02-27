
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int shift; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct reg_sequence {int dummy; } ;
struct arizona_priv {int out_up_delay; struct arizona* arizona; } ;
struct arizona {int regmap; } ;


 unsigned int ARIZONA_DRE1L_ENA_MASK ;
 unsigned int ARIZONA_DRE1R_ENA_MASK ;
 int ARIZONA_DRE_ENABLE ;


 int ARRAY_SIZE (struct reg_sequence*) ;
 int regmap_multi_reg_write (int ,struct reg_sequence const*,int) ;
 struct arizona_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 struct reg_sequence* wm5110_dre_left_enable ;
 struct reg_sequence* wm5110_dre_right_enable ;
 struct reg_sequence* wm5110_no_dre_left_enable ;
 struct reg_sequence* wm5110_no_dre_right_enable ;

__attribute__((used)) static int wm5110_hp_pre_enable(struct snd_soc_dapm_widget *w)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct arizona_priv *priv = snd_soc_component_get_drvdata(component);
 struct arizona *arizona = priv->arizona;
 unsigned int val = snd_soc_component_read32(component, ARIZONA_DRE_ENABLE);
 const struct reg_sequence *wseq;
 int nregs;

 switch (w->shift) {
 case 129:
  if (val & ARIZONA_DRE1L_ENA_MASK) {
   wseq = wm5110_dre_left_enable;
   nregs = ARRAY_SIZE(wm5110_dre_left_enable);
  } else {
   wseq = wm5110_no_dre_left_enable;
   nregs = ARRAY_SIZE(wm5110_no_dre_left_enable);
   priv->out_up_delay += 10;
  }
  break;
 case 128:
  if (val & ARIZONA_DRE1R_ENA_MASK) {
   wseq = wm5110_dre_right_enable;
   nregs = ARRAY_SIZE(wm5110_dre_right_enable);
  } else {
   wseq = wm5110_no_dre_right_enable;
   nregs = ARRAY_SIZE(wm5110_no_dre_right_enable);
   priv->out_up_delay += 10;
  }
  break;
 default:
  return 0;
 }

 return regmap_multi_reg_write(arizona->regmap, wseq, nregs);
}

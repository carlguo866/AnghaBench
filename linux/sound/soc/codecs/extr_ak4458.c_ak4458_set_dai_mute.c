
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct ak4458_priv {int fs; scalar_t__ mute_gpiod; } ;


 int AK4458_01_CONTROL2 ;
 int AK4458_0B_CONTROL7 ;
 int AK4458_ATS_MASK ;
 int AK4458_ATS_SHIFT ;
 int* att_speed ;
 int gpiod_set_value_cansleep (scalar_t__,int) ;
 int mdelay (int) ;
 struct ak4458_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int ak4458_set_dai_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;
 struct ak4458_priv *ak4458 = snd_soc_component_get_drvdata(component);
 int nfs, ndt, ret, reg;
 int ats;

 nfs = ak4458->fs;

 reg = snd_soc_component_read32(component, AK4458_0B_CONTROL7);
 ats = (reg & AK4458_ATS_MASK) >> AK4458_ATS_SHIFT;

 ndt = att_speed[ats] / (nfs / 1000);

 if (mute) {
  ret = snd_soc_component_update_bits(component, AK4458_01_CONTROL2, 0x01, 1);
  mdelay(ndt);
  if (ak4458->mute_gpiod)
   gpiod_set_value_cansleep(ak4458->mute_gpiod, 1);
 } else {
  if (ak4458->mute_gpiod)
   gpiod_set_value_cansleep(ak4458->mute_gpiod, 0);
  ret = snd_soc_component_update_bits(component, AK4458_01_CONTROL2, 0x01, 0);
  mdelay(ndt);
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct cs43130_private {unsigned int mclk; unsigned int mclk_int; int pll_bypass; } ;


 int EINVAL ;
 int cs43130_pll_config (struct snd_soc_component*) ;
 int dev_dbg (int ,char*,int ) ;
 int dev_err (int ,char*,unsigned int) ;
 struct cs43130_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cs43130_set_pll(struct snd_soc_component *component, int pll_id, int source,
      unsigned int freq_in, unsigned int freq_out)
{
 int ret = 0;
 struct cs43130_private *cs43130 = snd_soc_component_get_drvdata(component);

 switch (freq_in) {
 case 9600000:
 case 11289600:
 case 12000000:
 case 12288000:
 case 13000000:
 case 19200000:
 case 22579200:
 case 24000000:
 case 24576000:
 case 26000000:
  cs43130->mclk = freq_in;
  break;
 default:
  dev_err(component->dev,
   "unsupported pll input reference clock:%d\n", freq_in);
  return -EINVAL;
 }

 switch (freq_out) {
 case 22579200:
  cs43130->mclk_int = freq_out;
  break;
 case 24576000:
  cs43130->mclk_int = freq_out;
  break;
 default:
  dev_err(component->dev,
   "unsupported pll output ref clock: %u\n", freq_out);
  return -EINVAL;
 }

 ret = cs43130_pll_config(component);
 dev_dbg(component->dev, "cs43130->pll_bypass = %d", cs43130->pll_bypass);
 return ret;
}

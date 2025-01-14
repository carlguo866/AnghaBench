
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;


 int EINVAL ;
 unsigned int SND_SOC_DAIFMT_CBS_CFS ;
 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;
 unsigned int SND_SOC_DAIFMT_I2S ;
 unsigned int SND_SOC_DAIFMT_INV_MASK ;
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;
 unsigned int SND_SOC_DAIFMT_NB_NF ;

__attribute__((used)) static int xtfpga_i2s_set_fmt(struct snd_soc_dai *cpu_dai,
         unsigned int fmt)
{
 if ((fmt & SND_SOC_DAIFMT_INV_MASK) != SND_SOC_DAIFMT_NB_NF)
  return -EINVAL;
 if ((fmt & SND_SOC_DAIFMT_MASTER_MASK) != SND_SOC_DAIFMT_CBS_CFS)
  return -EINVAL;
 if ((fmt & SND_SOC_DAIFMT_FORMAT_MASK) != SND_SOC_DAIFMT_I2S)
  return -EINVAL;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;


 int EINVAL ;
 unsigned int SND_SOC_DAIFMT_CLOCK_MASK ;
 unsigned int SND_SOC_DAIFMT_I2S ;
 unsigned int SND_SOC_DAIFMT_NB_NF ;

__attribute__((used)) static int lochnagar_sc_check_fmt(struct snd_soc_dai *dai, unsigned int fmt,
      unsigned int tar)
{
 tar |= SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF;

 if ((fmt & ~SND_SOC_DAIFMT_CLOCK_MASK) != tar)
  return -EINVAL;

 return 0;
}

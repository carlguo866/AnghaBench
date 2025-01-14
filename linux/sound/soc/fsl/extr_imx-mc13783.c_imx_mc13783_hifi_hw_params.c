
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {struct snd_soc_dai* codec_dai; struct snd_soc_dai* cpu_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int MC13783_CLK_CLIA ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int,int ) ;
 int snd_soc_dai_set_tdm_slot (struct snd_soc_dai*,int,int,int,int) ;

__attribute__((used)) static int imx_mc13783_hifi_hw_params(struct snd_pcm_substream *substream,
 struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 int ret;

 ret = snd_soc_dai_set_tdm_slot(codec_dai, 0x3, 0x3, 4, 16);
 if (ret)
  return ret;

 ret = snd_soc_dai_set_sysclk(codec_dai, MC13783_CLK_CLIA, 26000000, 0);
 if (ret)
  return ret;

 return snd_soc_dai_set_tdm_slot(cpu_dai, 0x3, 0x3, 2, 16);
}

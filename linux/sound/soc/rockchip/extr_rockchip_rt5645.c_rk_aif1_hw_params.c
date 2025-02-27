
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {struct snd_soc_dai* codec_dai; struct snd_soc_dai* cpu_dai; } ;
struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int EINVAL ;
 int SND_SOC_CLOCK_IN ;
 int SND_SOC_CLOCK_OUT ;
 int dev_err (int ,char*,int) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int,int ) ;

__attribute__((used)) static int rk_aif1_hw_params(struct snd_pcm_substream *substream,
        struct snd_pcm_hw_params *params)
{
 int ret = 0;
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 int mclk;

 switch (params_rate(params)) {
 case 8000:
 case 16000:
 case 24000:
 case 32000:
 case 48000:
 case 64000:
 case 96000:
  mclk = 12288000;
  break;
 case 11025:
 case 22050:
 case 44100:
 case 88200:
  mclk = 11289600;
  break;
 default:
  return -EINVAL;
 }

 ret = snd_soc_dai_set_sysclk(cpu_dai, 0, mclk,
         SND_SOC_CLOCK_OUT);
 if (ret < 0) {
  dev_err(codec_dai->dev, "Can't set codec clock %d\n", ret);
  return ret;
 }

 ret = snd_soc_dai_set_sysclk(codec_dai, 0, mclk,
         SND_SOC_CLOCK_IN);
 if (ret < 0) {
  dev_err(codec_dai->dev, "Can't set codec clock %d\n", ret);
  return ret;
 }

 return ret;
}

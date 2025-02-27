
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {struct snd_soc_dai* cpu_dai; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int MMP_SSPA_CLK ;
 int MMP_SSPA_CLK_AUDIO ;
 int MMP_SYSCLK ;
 int WM8994_SYSCLK_MCLK1 ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int snd_soc_dai_set_pll (struct snd_soc_dai*,int ,int ,int,int) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int,int ) ;

__attribute__((used)) static int brownstone_wm8994_hw_params(struct snd_pcm_substream *substream,
           struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
 int freq_out, sspa_mclk, sysclk;

 if (params_rate(params) > 11025) {
  freq_out = params_rate(params) * 512;
  sysclk = params_rate(params) * 256;
  sspa_mclk = params_rate(params) * 64;
 } else {
  freq_out = params_rate(params) * 1024;
  sysclk = params_rate(params) * 512;
  sspa_mclk = params_rate(params) * 64;
 }

 snd_soc_dai_set_sysclk(cpu_dai, MMP_SSPA_CLK_AUDIO, freq_out, 0);
 snd_soc_dai_set_pll(cpu_dai, MMP_SYSCLK, 0, freq_out, sysclk);
 snd_soc_dai_set_pll(cpu_dai, MMP_SSPA_CLK, 0, freq_out, sspa_mclk);


 snd_soc_dai_set_sysclk(codec_dai, WM8994_SYSCLK_MCLK1, sysclk, 0);

 return 0;
}

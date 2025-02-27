
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {struct aic3x_priv* private_data; } ;
struct aic3x_priv {unsigned int sysclk; } ;



__attribute__((used)) static int aic3x_set_dai_sysclk(struct snd_soc_dai *codec_dai,
    int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 struct aic3x_priv *aic3x = codec->private_data;

 aic3x->sysclk = freq;
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned short rate; } ;


 unsigned short AC97_EXTENDED_STATUS ;
 unsigned short AC97_PCM_FRONT_DAC_RATE ;
 unsigned short AC97_SPDIF ;
 unsigned short stac9766_ac97_read (struct snd_soc_codec*,unsigned short) ;
 int stac9766_ac97_write (struct snd_soc_codec*,unsigned short,unsigned short) ;

__attribute__((used)) static int ac97_digital_prepare(struct snd_pcm_substream *substream,
    struct snd_soc_dai *dai)
{
 struct snd_soc_codec *codec = dai->codec;
 struct snd_pcm_runtime *runtime = substream->runtime;
 unsigned short reg, vra;

 stac9766_ac97_write(codec, AC97_SPDIF, 0x2002);

 vra = stac9766_ac97_read(codec, AC97_EXTENDED_STATUS);
 vra |= 0x5;

 stac9766_ac97_write(codec, AC97_EXTENDED_STATUS, vra);

 reg = AC97_PCM_FRONT_DAC_RATE;

 return stac9766_ac97_write(codec, reg, runtime->rate);
}

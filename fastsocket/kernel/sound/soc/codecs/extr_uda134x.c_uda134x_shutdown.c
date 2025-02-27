
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uda134x_priv {struct snd_pcm_substream* slave_substream; struct snd_pcm_substream* master_substream; } ;
struct snd_soc_pcm_runtime {struct snd_soc_device* socdev; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_codec {struct uda134x_priv* private_data; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;



__attribute__((used)) static void uda134x_shutdown(struct snd_pcm_substream *substream,
 struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_device *socdev = rtd->socdev;
 struct snd_soc_codec *codec = socdev->card->codec;
 struct uda134x_priv *uda134x = codec->private_data;

 if (uda134x->master_substream == substream)
  uda134x->master_substream = uda134x->slave_substream;

 uda134x->slave_substream = ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {struct snd_soc_device* socdev; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_codec {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 int ACTIVE_ACTIVATE_CODEC ;
 int SSM2602_ACTIVE ;
 int ssm2602_write (struct snd_soc_codec*,int ,int ) ;

__attribute__((used)) static int ssm2602_pcm_prepare(struct snd_pcm_substream *substream,
          struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_device *socdev = rtd->socdev;
 struct snd_soc_codec *codec = socdev->card->codec;

 ssm2602_write(codec, SSM2602_ACTIVE, ACTIVE_ACTIVATE_CODEC);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct snd_soc_pcm_runtime {struct snd_soc_device* socdev; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_codec {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;







 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;
 int WM8940_ADDCNTRL ;
 int WM8940_COMPANDINGCTL ;
 int WM8940_IFACE ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8940_i2s_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params,
    struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_device *socdev = rtd->socdev;
 struct snd_soc_codec *codec = socdev->card->codec;
 u16 iface = snd_soc_read(codec, WM8940_IFACE) & 0xFD9F;
 u16 addcntrl = snd_soc_read(codec, WM8940_ADDCNTRL) & 0xFFF1;
 u16 companding = snd_soc_read(codec,
      WM8940_COMPANDINGCTL) & 0xFFDF;
 int ret;


 if (substream->stream == SNDRV_PCM_STREAM_CAPTURE
     && params_channels(params) == 2)
  iface |= (1 << 9);

 switch (params_rate(params)) {
 case 8000:
  addcntrl |= (0x5 << 1);
  break;
 case 11025:
  addcntrl |= (0x4 << 1);
  break;
 case 16000:
  addcntrl |= (0x3 << 1);
  break;
 case 22050:
  addcntrl |= (0x2 << 1);
  break;
 case 32000:
  addcntrl |= (0x1 << 1);
  break;
 case 44100:
 case 48000:
  break;
 }
 ret = snd_soc_write(codec, WM8940_ADDCNTRL, addcntrl);
 if (ret)
  goto error_ret;

 switch (params_format(params)) {
 case 128:
  companding = companding | (1 << 5);
  break;
 case 132:
  break;
 case 131:
  iface |= (1 << 5);
  break;
 case 130:
  iface |= (2 << 5);
  break;
 case 129:
  iface |= (3 << 5);
  break;
 }
 ret = snd_soc_write(codec, WM8940_COMPANDINGCTL, companding);
 if (ret)
  goto error_ret;
 ret = snd_soc_write(codec, WM8940_IFACE, iface);

error_ret:
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct wm8750_priv {int sysclk; } ;
struct snd_soc_pcm_runtime {struct snd_soc_device* socdev; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_codec {struct wm8750_priv* private_data; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_4__ {int sr; int usb; } ;
struct TYPE_3__ {struct snd_soc_codec* codec; } ;






 int WM8750_IFACE ;
 int WM8750_SRATE ;
 TYPE_2__* coeff_div ;
 int get_coeff (int ,int ) ;
 int params_format (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8750_pcm_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params,
    struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_device *socdev = rtd->socdev;
 struct snd_soc_codec *codec = socdev->card->codec;
 struct wm8750_priv *wm8750 = codec->private_data;
 u16 iface = snd_soc_read(codec, WM8750_IFACE) & 0x1f3;
 u16 srate = snd_soc_read(codec, WM8750_SRATE) & 0x1c0;
 int coeff = get_coeff(wm8750->sysclk, params_rate(params));


 switch (params_format(params)) {
 case 131:
  break;
 case 130:
  iface |= 0x0004;
  break;
 case 129:
  iface |= 0x0008;
  break;
 case 128:
  iface |= 0x000c;
  break;
 }


 snd_soc_write(codec, WM8750_IFACE, iface);
 if (coeff >= 0)
  snd_soc_write(codec, WM8750_SRATE, srate |
   (coeff_div[coeff].sr << 1) | coeff_div[coeff].usb);

 return 0;
}

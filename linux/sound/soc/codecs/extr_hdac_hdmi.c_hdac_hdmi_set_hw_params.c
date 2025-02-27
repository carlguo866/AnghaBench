
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dai {size_t id; TYPE_2__* driver; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct hdac_hdmi_priv {struct hdac_hdmi_dai_port_map* dai_map; } ;
struct hdac_hdmi_pcm {int format; int channels; } ;
struct hdac_hdmi_dai_port_map {int cvt; } ;
struct TYPE_3__ {int sig_bits; } ;
struct TYPE_4__ {TYPE_1__ playback; } ;


 int EIO ;
 struct hdac_hdmi_pcm* hdac_hdmi_get_pcm_from_cvt (struct hdac_hdmi_priv*,int ) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int snd_hdac_calc_stream_format (int ,int ,int ,int ,int ) ;
 struct hdac_hdmi_priv* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int hdac_hdmi_set_hw_params(struct snd_pcm_substream *substream,
 struct snd_pcm_hw_params *hparams, struct snd_soc_dai *dai)
{
 struct hdac_hdmi_priv *hdmi = snd_soc_dai_get_drvdata(dai);
 struct hdac_hdmi_dai_port_map *dai_map;
 struct hdac_hdmi_pcm *pcm;
 int format;

 dai_map = &hdmi->dai_map[dai->id];

 format = snd_hdac_calc_stream_format(params_rate(hparams),
   params_channels(hparams), params_format(hparams),
   dai->driver->playback.sig_bits, 0);

 pcm = hdac_hdmi_get_pcm_from_cvt(hdmi, dai_map->cvt);
 if (!pcm)
  return -EIO;

 pcm->format = format;
 pcm->channels = params_channels(hparams);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8350_data {struct wm8350* wm8350; } ;
struct wm8350 {int dummy; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int WM8350_AIF_WL_MASK ;
 int WM8350_AI_FORMATING ;
 int WM8350_DAC_MUTE_VOLUME ;
 int WM8350_DAC_SB_FILT ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;
 struct wm8350_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 int wm8350_clear_bits (struct wm8350*,int ,int ) ;
 int wm8350_set_bits (struct wm8350*,int ,int ) ;

__attribute__((used)) static int wm8350_pcm_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params,
    struct snd_soc_dai *codec_dai)
{
 struct snd_soc_component *component = codec_dai->component;
 struct wm8350_data *wm8350_data = snd_soc_component_get_drvdata(component);
 struct wm8350 *wm8350 = wm8350_data->wm8350;
 u16 iface = snd_soc_component_read32(component, WM8350_AI_FORMATING) &
     ~WM8350_AIF_WL_MASK;


 switch (params_width(params)) {
 case 16:
  break;
 case 20:
  iface |= 0x1 << 10;
  break;
 case 24:
  iface |= 0x2 << 10;
  break;
 case 32:
  iface |= 0x3 << 10;
  break;
 }

 snd_soc_component_write(component, WM8350_AI_FORMATING, iface);




 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  if (params_rate(params) < 24000)
   wm8350_set_bits(wm8350, WM8350_DAC_MUTE_VOLUME,
     WM8350_DAC_SB_FILT);
  else
   wm8350_clear_bits(wm8350, WM8350_DAC_MUTE_VOLUME,
       WM8350_DAC_SB_FILT);
 }

 return 0;
}

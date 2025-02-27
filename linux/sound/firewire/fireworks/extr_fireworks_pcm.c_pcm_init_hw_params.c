
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int rates; int formats; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct amdtp_stream {int dummy; } ;
struct snd_efw {unsigned int* pcm_capture_channels; unsigned int* pcm_playback_channels; int supported_sampling_rate; struct amdtp_stream rx_stream; struct amdtp_stream tx_stream; } ;


 int AM824_IN_PCM_FORMAT_BITS ;
 int AM824_OUT_PCM_FORMAT_BITS ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;
 int amdtp_am824_add_pcm_hw_constraints (struct amdtp_stream*,struct snd_pcm_runtime*) ;
 int hw_rule_channels ;
 int hw_rule_rate ;
 int limit_channels (TYPE_1__*,unsigned int*) ;
 int snd_pcm_hw_rule_add (struct snd_pcm_runtime*,int ,int ,int ,unsigned int*,int ,int) ;
 int snd_pcm_limit_hw_rates (struct snd_pcm_runtime*) ;

__attribute__((used)) static int
pcm_init_hw_params(struct snd_efw *efw,
     struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct amdtp_stream *s;
 unsigned int *pcm_channels;
 int err;

 if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
  runtime->hw.formats = AM824_IN_PCM_FORMAT_BITS;
  s = &efw->tx_stream;
  pcm_channels = efw->pcm_capture_channels;
 } else {
  runtime->hw.formats = AM824_OUT_PCM_FORMAT_BITS;
  s = &efw->rx_stream;
  pcm_channels = efw->pcm_playback_channels;
 }


 runtime->hw.rates = efw->supported_sampling_rate,
 snd_pcm_limit_hw_rates(runtime);

 limit_channels(&runtime->hw, pcm_channels);

 err = snd_pcm_hw_rule_add(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
      hw_rule_channels, pcm_channels,
      SNDRV_PCM_HW_PARAM_RATE, -1);
 if (err < 0)
  goto end;

 err = snd_pcm_hw_rule_add(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
      hw_rule_rate, pcm_channels,
      SNDRV_PCM_HW_PARAM_CHANNELS, -1);
 if (err < 0)
  goto end;

 err = amdtp_am824_add_pcm_hw_constraints(s, runtime);
end:
 return err;
}

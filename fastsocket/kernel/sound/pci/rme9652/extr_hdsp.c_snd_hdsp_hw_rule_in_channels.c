
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_rule {struct hdsp* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int dummy; } ;
struct hdsp {scalar_t__ io_type; unsigned int qs_in_channels; unsigned int ds_in_channels; unsigned int ss_in_channels; } ;


 scalar_t__ H9632 ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 int snd_interval_list (struct snd_interval*,int,unsigned int*,int ) ;

__attribute__((used)) static int snd_hdsp_hw_rule_in_channels(struct snd_pcm_hw_params *params,
     struct snd_pcm_hw_rule *rule)
{
 struct hdsp *hdsp = rule->private;
 struct snd_interval *c = hw_param_interval(params, SNDRV_PCM_HW_PARAM_CHANNELS);
 if (hdsp->io_type == H9632) {
  unsigned int list[3];
  list[0] = hdsp->qs_in_channels;
  list[1] = hdsp->ds_in_channels;
  list[2] = hdsp->ss_in_channels;
  return snd_interval_list(c, 3, list, 0);
 } else {
  unsigned int list[2];
  list[0] = hdsp->ds_in_channels;
  list[1] = hdsp->ss_in_channels;
  return snd_interval_list(c, 2, list, 0);
 }
}

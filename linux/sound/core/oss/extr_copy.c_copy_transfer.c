
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int first; int step; } ;
struct snd_pcm_plugin_channel {int enabled; TYPE_3__ area; scalar_t__ wanted; } ;
struct TYPE_7__ {unsigned int channels; int format; } ;
struct TYPE_6__ {int format; } ;
struct snd_pcm_plugin {TYPE_2__ src_format; TYPE_1__ dst_format; } ;
typedef scalar_t__ snd_pcm_uframes_t ;
typedef scalar_t__ snd_pcm_sframes_t ;


 scalar_t__ ENXIO ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_pcm_area_copy (TYPE_3__*,int ,TYPE_3__*,int ,scalar_t__,int ) ;
 int snd_pcm_area_silence (TYPE_3__*,int ,scalar_t__,int ) ;

__attribute__((used)) static snd_pcm_sframes_t copy_transfer(struct snd_pcm_plugin *plugin,
        const struct snd_pcm_plugin_channel *src_channels,
        struct snd_pcm_plugin_channel *dst_channels,
        snd_pcm_uframes_t frames)
{
 unsigned int channel;
 unsigned int nchannels;

 if (snd_BUG_ON(!plugin || !src_channels || !dst_channels))
  return -ENXIO;
 if (frames == 0)
  return 0;
 nchannels = plugin->src_format.channels;
 for (channel = 0; channel < nchannels; channel++) {
  if (snd_BUG_ON(src_channels->area.first % 8 ||
          src_channels->area.step % 8))
   return -ENXIO;
  if (snd_BUG_ON(dst_channels->area.first % 8 ||
          dst_channels->area.step % 8))
   return -ENXIO;
  if (!src_channels->enabled) {
   if (dst_channels->wanted)
    snd_pcm_area_silence(&dst_channels->area, 0, frames, plugin->dst_format.format);
   dst_channels->enabled = 0;
   continue;
  }
  dst_channels->enabled = 1;
  snd_pcm_area_copy(&src_channels->area, 0, &dst_channels->area, 0, frames, plugin->src_format.format);
  src_channels++;
  dst_channels++;
 }
 return frames;
}

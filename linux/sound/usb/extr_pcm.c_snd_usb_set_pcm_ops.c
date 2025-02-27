
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_ops {int dummy; } ;
struct snd_pcm {int dummy; } ;


 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_pcm_set_ops (struct snd_pcm*,int,struct snd_pcm_ops const*) ;
 struct snd_pcm_ops snd_usb_capture_dev_ops ;
 struct snd_pcm_ops snd_usb_capture_ops ;
 struct snd_pcm_ops snd_usb_playback_dev_ops ;
 struct snd_pcm_ops snd_usb_playback_ops ;
 scalar_t__ snd_usb_use_vmalloc ;

void snd_usb_set_pcm_ops(struct snd_pcm *pcm, int stream)
{
 const struct snd_pcm_ops *ops;

 if (snd_usb_use_vmalloc)
  ops = stream == SNDRV_PCM_STREAM_PLAYBACK ?
   &snd_usb_playback_ops : &snd_usb_capture_ops;
 else
  ops = stream == SNDRV_PCM_STREAM_PLAYBACK ?
   &snd_usb_playback_dev_ops : &snd_usb_capture_dev_ops;
 snd_pcm_set_ops(pcm, stream, ops);
}

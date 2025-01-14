
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int delay; } ;
struct TYPE_2__ {scalar_t__ bufsize; struct snd_pcm_substream* substream; } ;
struct azx_dev {TYPE_1__ core; scalar_t__ insufficient; } ;
struct azx {int dummy; } ;


 int AMD_FIFO_SIZE ;
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;
 int azx_stream (struct azx_dev*) ;
 int bytes_to_frames (struct snd_pcm_runtime*,unsigned int) ;
 unsigned int frames_to_bytes (struct snd_pcm_runtime*,int ) ;
 unsigned int snd_hdac_stream_get_pos_lpib (int ) ;

__attribute__((used)) static unsigned int azx_get_pos_fifo(struct azx *chip, struct azx_dev *azx_dev)
{
 struct snd_pcm_substream *substream = azx_dev->core.substream;
 struct snd_pcm_runtime *runtime = substream->runtime;
 unsigned int pos, delay;

 pos = snd_hdac_stream_get_pos_lpib(azx_stream(azx_dev));
 if (!runtime)
  return pos;

 runtime->delay = AMD_FIFO_SIZE;
 delay = frames_to_bytes(runtime, AMD_FIFO_SIZE);
 if (azx_dev->insufficient) {
  if (pos < delay) {
   delay = pos;
   runtime->delay = bytes_to_frames(runtime, pos);
  } else {
   azx_dev->insufficient = 0;
  }
 }


 if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
  if (pos < delay)
   pos += azx_dev->core.bufsize;
  pos -= delay;
 }

 return pos;
}

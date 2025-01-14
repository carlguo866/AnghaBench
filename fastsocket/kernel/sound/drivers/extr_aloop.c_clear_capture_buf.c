
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_runtime {char* dma_area; int channels; int format; } ;
struct loopback_pcm {unsigned int buf_pos; scalar_t__ silent_size; scalar_t__ pcm_buffer_size; TYPE_1__* substream; } ;
struct TYPE_2__ {struct snd_pcm_runtime* runtime; } ;


 int bytes_to_frames (struct snd_pcm_runtime*,unsigned int) ;
 int snd_pcm_format_set_silence (int ,char*,int) ;

__attribute__((used)) static void clear_capture_buf(struct loopback_pcm *dpcm, unsigned int bytes)
{
 struct snd_pcm_runtime *runtime = dpcm->substream->runtime;
 char *dst = runtime->dma_area;
 unsigned int dst_off = dpcm->buf_pos;

 if (dpcm->silent_size >= dpcm->pcm_buffer_size)
  return;
 if (dpcm->silent_size + bytes > dpcm->pcm_buffer_size)
  bytes = dpcm->pcm_buffer_size - dpcm->silent_size;

 for (;;) {
  unsigned int size = bytes;
  if (dst_off + size > dpcm->pcm_buffer_size)
   size = dpcm->pcm_buffer_size - dst_off;
  snd_pcm_format_set_silence(runtime->format, dst + dst_off,
        bytes_to_frames(runtime, size) *
         runtime->channels);
  dpcm->silent_size += size;
  bytes -= size;
  if (!bytes)
   break;
  dst_off = 0;
 }
}

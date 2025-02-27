
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_soc_pcm_runtime {TYPE_2__* dai; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned long dma_bytes; scalar_t__ dma_area; scalar_t__ dma_addr; } ;
struct camelot_pcm {int dummy; } ;
struct TYPE_4__ {TYPE_1__* cpu_dai; } ;
struct TYPE_3__ {size_t id; } ;
typedef unsigned long BRGREG ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 struct camelot_pcm* cam_pcm_data ;
 int pr_debug (char*,int ,unsigned long) ;

__attribute__((used)) static int camelot_prepare(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct camelot_pcm *cam = &cam_pcm_data[rtd->dai->cpu_dai->id];

 pr_debug("PCM data: addr 0x%08ulx len %d\n",
   (u32)runtime->dma_addr, runtime->dma_bytes);

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  BRGREG(BRGATXSAR) = (unsigned long)runtime->dma_area;
  BRGREG(BRGATXTCR) = runtime->dma_bytes;
 } else {
  BRGREG(BRGARXDAR) = (unsigned long)runtime->dma_area;
  BRGREG(BRGARXTCR) = runtime->dma_bytes;
 }

 return 0;
}

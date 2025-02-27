
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int period_size; struct mixart_stream* private_data; } ;
struct mixart_stream {int buf_periods; scalar_t__ buf_period_frag; } ;
typedef int snd_pcm_uframes_t ;



__attribute__((used)) static snd_pcm_uframes_t snd_mixart_stream_pointer(struct snd_pcm_substream *subs)
{
 struct snd_pcm_runtime *runtime = subs->runtime;
 struct mixart_stream *stream = runtime->private_data;

 return (snd_pcm_uframes_t)((stream->buf_periods * runtime->period_size) + stream->buf_period_frag);
}

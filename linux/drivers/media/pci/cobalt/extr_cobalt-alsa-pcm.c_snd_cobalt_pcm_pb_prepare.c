
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_cobalt_card {scalar_t__ pb_pos; int pb_count; int pb_size; } ;


 int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct snd_cobalt_card* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_cobalt_pcm_pb_prepare(struct snd_pcm_substream *substream)
{
 struct snd_cobalt_card *cobsc = snd_pcm_substream_chip(substream);

 cobsc->pb_size = snd_pcm_lib_buffer_bytes(substream);
 cobsc->pb_count = snd_pcm_lib_period_bytes(substream);
 cobsc->pb_pos = 0;

 return 0;
}

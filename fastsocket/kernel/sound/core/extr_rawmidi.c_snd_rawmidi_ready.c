
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_substream {struct snd_rawmidi_runtime* runtime; } ;
struct snd_rawmidi_runtime {scalar_t__ avail; scalar_t__ avail_min; } ;



__attribute__((used)) static inline int snd_rawmidi_ready(struct snd_rawmidi_substream *substream)
{
 struct snd_rawmidi_runtime *runtime = substream->runtime;
 return runtime->avail >= runtime->avail_min;
}

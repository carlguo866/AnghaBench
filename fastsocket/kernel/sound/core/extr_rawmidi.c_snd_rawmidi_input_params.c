
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_substream {struct snd_rawmidi_runtime* runtime; } ;
struct snd_rawmidi_runtime {int buffer_size; char* buffer; int avail_min; } ;
struct snd_rawmidi_params {int buffer_size; int avail_min; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int snd_rawmidi_drain_input (struct snd_rawmidi_substream*) ;

int snd_rawmidi_input_params(struct snd_rawmidi_substream *substream,
        struct snd_rawmidi_params * params)
{
 char *newbuf;
 struct snd_rawmidi_runtime *runtime = substream->runtime;

 snd_rawmidi_drain_input(substream);
 if (params->buffer_size < 32 || params->buffer_size > 1024L * 1024L) {
  return -EINVAL;
 }
 if (params->avail_min < 1 || params->avail_min > params->buffer_size) {
  return -EINVAL;
 }
 if (params->buffer_size != runtime->buffer_size) {
  newbuf = kmalloc(params->buffer_size, GFP_KERNEL);
  if (!newbuf)
   return -ENOMEM;
  kfree(runtime->buffer);
  runtime->buffer = newbuf;
  runtime->buffer_size = params->buffer_size;
 }
 runtime->avail_min = params->avail_min;
 return 0;
}

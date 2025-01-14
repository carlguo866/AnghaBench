
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int marker; scalar_t__ channel; scalar_t__ byte_idx; } ;
struct snd_usb_substream {int interface; TYPE_2__* stream; TYPE_1__ dsd_dop; struct snd_pcm_substream* pcm_substream; scalar_t__ altset_idx; } ;
struct snd_usb_stream {int pcm; struct snd_usb_substream* substream; } ;
struct snd_pcm_substream {int stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_usb_substream* private_data; int hw; } ;
struct TYPE_4__ {int chip; } ;


 int setup_hw_info (struct snd_pcm_runtime*,struct snd_usb_substream*) ;
 int snd_media_stream_init (struct snd_usb_substream*,int ,int) ;
 struct snd_usb_stream* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_usb_autosuspend (int ) ;
 int snd_usb_hardware ;

__attribute__((used)) static int snd_usb_pcm_open(struct snd_pcm_substream *substream)
{
 int direction = substream->stream;
 struct snd_usb_stream *as = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_usb_substream *subs = &as->substream[direction];
 int ret;

 subs->interface = -1;
 subs->altset_idx = 0;
 runtime->hw = snd_usb_hardware;
 runtime->private_data = subs;
 subs->pcm_substream = substream;



 subs->dsd_dop.byte_idx = 0;
 subs->dsd_dop.channel = 0;
 subs->dsd_dop.marker = 1;

 ret = setup_hw_info(runtime, subs);
 if (ret == 0) {
  ret = snd_media_stream_init(subs, as->pcm, direction);
  if (ret)
   snd_usb_autosuspend(subs->stream->chip);
 }
 return ret;
}

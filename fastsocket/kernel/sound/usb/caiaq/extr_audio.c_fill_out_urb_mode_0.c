
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_iso_packet_descriptor {int offset; int length; } ;
struct urb {unsigned char* transfer_buffer; } ;
struct TYPE_2__ {int data_alignment; } ;
struct snd_usb_caiaqdev {int n_streams; size_t* audio_out_buf_pos; TYPE_1__ spec; int * period_out_count; struct snd_pcm_substream** sub_playback; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {char* dma_area; int buffer_size; } ;


 int BYTES_PER_SAMPLE_USB ;
 int CHANNELS_PER_STREAM ;
 unsigned char MAKE_CHECKBYTE (struct snd_usb_caiaqdev*,int,int) ;
 int frames_to_bytes (struct snd_pcm_runtime*,int ) ;

__attribute__((used)) static void fill_out_urb_mode_0(struct snd_usb_caiaqdev *dev,
    struct urb *urb,
    const struct usb_iso_packet_descriptor *iso)
{
 unsigned char *usb_buf = urb->transfer_buffer + iso->offset;
 struct snd_pcm_substream *sub;
 int stream, i;

 for (i = 0; i < iso->length;) {
  for (stream = 0; stream < dev->n_streams; stream++, i++) {
   sub = dev->sub_playback[stream];
   if (sub) {
    struct snd_pcm_runtime *rt = sub->runtime;
    char *audio_buf = rt->dma_area;
    int sz = frames_to_bytes(rt, rt->buffer_size);
    usb_buf[i] =
     audio_buf[dev->audio_out_buf_pos[stream]];
    dev->period_out_count[stream]++;
    dev->audio_out_buf_pos[stream]++;
    if (dev->audio_out_buf_pos[stream] == sz)
     dev->audio_out_buf_pos[stream] = 0;
   } else
    usb_buf[i] = 0;
  }


  if (dev->spec.data_alignment == 2 &&
      i % (dev->n_streams * BYTES_PER_SAMPLE_USB) ==
          (dev->n_streams * CHANNELS_PER_STREAM))
   for (stream = 0; stream < dev->n_streams; stream++, i++)
    usb_buf[i] = MAKE_CHECKBYTE(dev, stream, i);
 }
}

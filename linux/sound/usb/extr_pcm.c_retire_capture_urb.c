
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct urb {int number_of_packets; TYPE_1__* iso_frame_desc; scalar_t__ transfer_buffer; } ;
struct snd_usb_substream {int pkt_offset_adj; unsigned int hwptr_done; scalar_t__ transfer_done; int last_frame_number; TYPE_3__* pcm_substream; int lock; scalar_t__ last_delay; TYPE_2__* dev; int txfr_quirk; } ;
struct snd_pcm_runtime {int frame_bits; int sample_bits; unsigned int buffer_size; scalar_t__ period_size; scalar_t__ dma_area; scalar_t__ delay; } ;
struct TYPE_6__ {struct snd_pcm_runtime* runtime; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int offset; unsigned int actual_length; scalar_t__ status; } ;


 int dev_dbg (int *,char*,int,scalar_t__) ;
 int dev_warn_ratelimited (int *,char*,int,unsigned int) ;
 int memcpy (scalar_t__,unsigned char*,unsigned int) ;
 scalar_t__ printk_ratelimit () ;
 int snd_pcm_period_elapsed (TYPE_3__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_get_current_frame_number (TYPE_2__*) ;

__attribute__((used)) static void retire_capture_urb(struct snd_usb_substream *subs,
          struct urb *urb)
{
 struct snd_pcm_runtime *runtime = subs->pcm_substream->runtime;
 unsigned int stride, frames, bytes, oldptr;
 int i, period_elapsed = 0;
 unsigned long flags;
 unsigned char *cp;
 int current_frame_number;


 current_frame_number = usb_get_current_frame_number(subs->dev);

 stride = runtime->frame_bits >> 3;

 for (i = 0; i < urb->number_of_packets; i++) {
  cp = (unsigned char *)urb->transfer_buffer + urb->iso_frame_desc[i].offset + subs->pkt_offset_adj;
  if (urb->iso_frame_desc[i].status && printk_ratelimit()) {
   dev_dbg(&subs->dev->dev, "frame %d active: %d\n",
    i, urb->iso_frame_desc[i].status);

  }
  bytes = urb->iso_frame_desc[i].actual_length;
  frames = bytes / stride;
  if (!subs->txfr_quirk)
   bytes = frames * stride;
  if (bytes % (runtime->sample_bits >> 3) != 0) {
   int oldbytes = bytes;
   bytes = frames * stride;
   dev_warn_ratelimited(&subs->dev->dev,
     "Corrected urb data len. %d->%d\n",
       oldbytes, bytes);
  }

  spin_lock_irqsave(&subs->lock, flags);
  oldptr = subs->hwptr_done;
  subs->hwptr_done += bytes;
  if (subs->hwptr_done >= runtime->buffer_size * stride)
   subs->hwptr_done -= runtime->buffer_size * stride;
  frames = (bytes + (oldptr % stride)) / stride;
  subs->transfer_done += frames;
  if (subs->transfer_done >= runtime->period_size) {
   subs->transfer_done -= runtime->period_size;
   period_elapsed = 1;
  }



  runtime->delay = subs->last_delay = 0;


  subs->last_frame_number = current_frame_number;
  subs->last_frame_number &= 0xFF;

  spin_unlock_irqrestore(&subs->lock, flags);

  if (oldptr + bytes > runtime->buffer_size * stride) {
   unsigned int bytes1 =
     runtime->buffer_size * stride - oldptr;
   memcpy(runtime->dma_area + oldptr, cp, bytes1);
   memcpy(runtime->dma_area, cp + bytes1, bytes - bytes1);
  } else {
   memcpy(runtime->dma_area + oldptr, cp, bytes);
  }
 }

 if (period_elapsed)
  snd_pcm_period_elapsed(subs->pcm_substream);
}

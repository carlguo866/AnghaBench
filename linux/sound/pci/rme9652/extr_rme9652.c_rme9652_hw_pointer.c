
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rme9652 {int period_bytes; unsigned int prev_hw_offset; unsigned int max_jitter; unsigned int hw_offsetmask; TYPE_1__* card; int precise_ptr; } ;
typedef unsigned int snd_pcm_uframes_t ;
typedef int snd_pcm_sframes_t ;
struct TYPE_2__ {int dev; } ;


 int RME9652_buf_pos ;
 int RME9652_buffer_id ;
 int RME9652_status_register ;
 int dev_err (int ,char*,int,unsigned int) ;
 int rme9652_read (struct snd_rme9652*,int ) ;

__attribute__((used)) static snd_pcm_uframes_t rme9652_hw_pointer(struct snd_rme9652 *rme9652)
{
 int status;
 unsigned int offset, frag;
 snd_pcm_uframes_t period_size = rme9652->period_bytes / 4;
 snd_pcm_sframes_t delta;

 status = rme9652_read(rme9652, RME9652_status_register);
 if (!rme9652->precise_ptr)
  return (status & RME9652_buffer_id) ? period_size : 0;
 offset = status & RME9652_buf_pos;





 delta = rme9652->prev_hw_offset - offset;
 delta &= 0xffff;
 if (delta <= (snd_pcm_sframes_t)rme9652->max_jitter * 4)
  offset = rme9652->prev_hw_offset;
 else
  rme9652->prev_hw_offset = offset;
 offset &= rme9652->hw_offsetmask;
 offset /= 4;
 frag = status & RME9652_buffer_id;

 if (offset < period_size) {
  if (offset > rme9652->max_jitter) {
   if (frag)
    dev_err(rme9652->card->dev,
     "Unexpected hw_pointer position (bufid == 0): status: %x offset: %d\n",
     status, offset);
  } else if (!frag)
   return 0;
  offset -= rme9652->max_jitter;
  if ((int)offset < 0)
   offset += period_size * 2;
 } else {
  if (offset > period_size + rme9652->max_jitter) {
   if (!frag)
    dev_err(rme9652->card->dev,
     "Unexpected hw_pointer position (bufid == 1): status: %x offset: %d\n",
     status, offset);
  } else if (frag)
   return period_size;
  offset -= rme9652->max_jitter;
 }

 return offset;
}

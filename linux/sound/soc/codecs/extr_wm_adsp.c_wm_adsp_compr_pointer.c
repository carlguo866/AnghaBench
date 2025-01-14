
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm_adsp_compr_buf {int avail; scalar_t__ error; } ;
struct wm_adsp_compr {int copied_total; int sample_rate; struct wm_adsp_compr_buf* buf; struct wm_adsp* dsp; } ;
struct wm_adsp {int pwr_lock; scalar_t__ fatal_error; } ;
struct snd_compr_tstamp {int copied_total; int sampling_rate; } ;
struct snd_compr_stream {TYPE_1__* runtime; } ;
struct TYPE_2__ {struct wm_adsp_compr* private_data; } ;


 int EIO ;
 int SNDRV_PCM_STATE_XRUN ;
 int WM_ADSP_DATA_WORD_SIZE ;
 int compr_dbg (struct wm_adsp_compr*,char*) ;
 int compr_err (struct wm_adsp_compr*,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_compr_stop_error (struct snd_compr_stream*,int ) ;
 int wm_adsp_buffer_get_error (struct wm_adsp_compr_buf*) ;
 int wm_adsp_buffer_reenable_irq (struct wm_adsp_compr_buf*) ;
 int wm_adsp_buffer_update_avail (struct wm_adsp_compr_buf*) ;
 int wm_adsp_compr_frag_words (struct wm_adsp_compr*) ;

int wm_adsp_compr_pointer(struct snd_compr_stream *stream,
     struct snd_compr_tstamp *tstamp)
{
 struct wm_adsp_compr *compr = stream->runtime->private_data;
 struct wm_adsp *dsp = compr->dsp;
 struct wm_adsp_compr_buf *buf;
 int ret = 0;

 compr_dbg(compr, "Pointer request\n");

 mutex_lock(&dsp->pwr_lock);

 buf = compr->buf;

 if (dsp->fatal_error || !buf || buf->error) {
  snd_compr_stop_error(stream, SNDRV_PCM_STATE_XRUN);
  ret = -EIO;
  goto out;
 }

 if (buf->avail < wm_adsp_compr_frag_words(compr)) {
  ret = wm_adsp_buffer_update_avail(buf);
  if (ret < 0) {
   compr_err(compr, "Error reading avail: %d\n", ret);
   goto out;
  }





  if (buf->avail < wm_adsp_compr_frag_words(compr)) {
   ret = wm_adsp_buffer_get_error(buf);
   if (ret < 0) {
    if (buf->error)
     snd_compr_stop_error(stream,
       SNDRV_PCM_STATE_XRUN);
    goto out;
   }

   ret = wm_adsp_buffer_reenable_irq(buf);
   if (ret < 0) {
    compr_err(compr, "Failed to re-enable buffer IRQ: %d\n",
       ret);
    goto out;
   }
  }
 }

 tstamp->copied_total = compr->copied_total;
 tstamp->copied_total += buf->avail * WM_ADSP_DATA_WORD_SIZE;
 tstamp->sampling_rate = compr->sample_rate;

out:
 mutex_unlock(&dsp->pwr_lock);

 return ret;
}

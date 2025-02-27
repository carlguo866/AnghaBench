
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_snd_pcm {int g723_buf; int g723_dma; struct solo_dev* solo_dev; } ;
struct solo_dev {int dummy; } ;
struct snd_pcm_substream {int number; } ;


 unsigned long G723_FRAMES_PER_PAGE ;
 int G723_PERIOD_BLOCK ;
 int G723_PERIOD_BYTES ;
 scalar_t__ SOLO_G723_EXT_ADDR (struct solo_dev*) ;
 int memcpy (void*,int ,int) ;
 struct solo_snd_pcm* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int solo_p2m_dma_t (struct solo_dev*,int ,int ,scalar_t__,int,int ,int ) ;

__attribute__((used)) static int snd_solo_pcm_copy_kernel(struct snd_pcm_substream *ss, int channel,
        unsigned long pos, void *dst,
        unsigned long count)
{
 struct solo_snd_pcm *solo_pcm = snd_pcm_substream_chip(ss);
 struct solo_dev *solo_dev = solo_pcm->solo_dev;
 int err, i;

 for (i = 0; i < (count / G723_FRAMES_PER_PAGE); i++) {
  int page = (pos / G723_FRAMES_PER_PAGE) + i;

  err = solo_p2m_dma_t(solo_dev, 0, solo_pcm->g723_dma,
         SOLO_G723_EXT_ADDR(solo_dev) +
         (page * G723_PERIOD_BLOCK) +
         (ss->number * G723_PERIOD_BYTES),
         G723_PERIOD_BYTES, 0, 0);
  if (err)
   return err;

  memcpy(dst, solo_pcm->g723_buf, G723_PERIOD_BYTES);
  dst += G723_PERIOD_BYTES;
 }

 return 0;
}

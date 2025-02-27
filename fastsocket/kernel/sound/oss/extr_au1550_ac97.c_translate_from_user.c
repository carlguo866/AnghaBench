
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmabuf {int num_channels; int sample_size; int src_factor; int dma_bytes_per_sample; int user_bytes_per_sample; } ;
typedef int s16 ;


 int EFAULT ;
 int U8_TO_S16 (char) ;
 scalar_t__ copy_from_user (char*,char*,int) ;
 int memcpy (char*,int *,int) ;

__attribute__((used)) static int
translate_from_user(struct dmabuf *db, char* dmabuf, char* userbuf,
              int dmacount)
{
 int sample, i;
 int interp_bytes_per_sample;
 int num_samples;
 int mono = (db->num_channels == 1);
 char usersample[12];
 s16 ch, dmasample[6];

 if (db->sample_size == 16 && !mono && db->src_factor == 1) {


  if (copy_from_user(dmabuf, userbuf, dmacount))
   return -EFAULT;
  return dmacount;
 }

 interp_bytes_per_sample = db->dma_bytes_per_sample * db->src_factor;
 num_samples = dmacount / interp_bytes_per_sample;

 for (sample = 0; sample < num_samples; sample++) {
  if (copy_from_user(usersample, userbuf,
       db->user_bytes_per_sample)) {
   return -EFAULT;
  }

  for (i = 0; i < db->num_channels; i++) {
   if (db->sample_size == 8)
    ch = U8_TO_S16(usersample[i]);
   else
    ch = *((s16 *) (&usersample[i * 2]));
   dmasample[i] = ch;
   if (mono)
    dmasample[i + 1] = ch;
  }



  for (i = 0; i < db->src_factor; i++)
   memcpy(dmabuf, dmasample, db->dma_bytes_per_sample);

  userbuf += db->user_bytes_per_sample;
  dmabuf += interp_bytes_per_sample;
 }

 return num_samples * interp_bytes_per_sample;
}

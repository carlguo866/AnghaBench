
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mask {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;

 int* preferred_formats ;
 scalar_t__ snd_mask_test (struct snd_mask*,int) ;
 int snd_pcm_format_big_endian (int) ;
 scalar_t__ snd_pcm_format_linear (int) ;
 int snd_pcm_format_unsigned (int) ;
 unsigned int snd_pcm_format_width (int) ;
 int snd_pcm_plug_formats (struct snd_mask*,int) ;

int snd_pcm_plug_slave_format(int format, struct snd_mask *format_mask)
{
 int i;

 if (snd_mask_test(format_mask, format))
  return format;
 if (! snd_pcm_plug_formats(format_mask, format))
  return -EINVAL;
 if (snd_pcm_format_linear(format)) {
  unsigned int width = snd_pcm_format_width(format);
  int unsignd = snd_pcm_format_unsigned(format) > 0;
  int big = snd_pcm_format_big_endian(format) > 0;
  unsigned int badness, best = -1;
  int best_format = -1;
  for (i = 0; i < ARRAY_SIZE(preferred_formats); i++) {
   int f = preferred_formats[i];
   unsigned int w;
   if (!snd_mask_test(format_mask, f))
    continue;
   w = snd_pcm_format_width(f);
   if (w >= width)
    badness = w - width;
   else
    badness = width - w + 32;
   badness += snd_pcm_format_unsigned(f) != unsignd;
   badness += snd_pcm_format_big_endian(f) != big;
   if (badness < best) {
    best_format = f;
    best = badness;
   }
  }
  return best_format >= 0 ? best_format : -EINVAL;
 } else {
  switch (format) {
  case 128:
   for (i = 0; i < ARRAY_SIZE(preferred_formats); ++i) {
    int format1 = preferred_formats[i];
    if (snd_mask_test(format_mask, format1))
     return format1;
   }
  default:
   return -EINVAL;
  }
 }
}

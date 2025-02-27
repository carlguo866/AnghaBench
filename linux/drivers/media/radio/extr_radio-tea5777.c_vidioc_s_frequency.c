
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ tuner; scalar_t__ type; int frequency; } ;
struct radio_tea5777 {int freq; int band; scalar_t__ has_am; } ;
struct file {int dummy; } ;


 int BAND_AM ;
 int BAND_FM ;
 int EINVAL ;
 scalar_t__ V4L2_TUNER_RADIO ;
 int radio_tea5777_set_freq (struct radio_tea5777*) ;
 struct radio_tea5777* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
     const struct v4l2_frequency *f)
{
 struct radio_tea5777 *tea = video_drvdata(file);

 if (f->tuner != 0 || f->type != V4L2_TUNER_RADIO)
  return -EINVAL;

 if (tea->has_am && f->frequency < (20000 * 16))
  tea->band = BAND_AM;
 else
  tea->band = BAND_FM;

 tea->freq = f->frequency;
 return radio_tea5777_set_freq(tea);
}

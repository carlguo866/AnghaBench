
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ tuner; scalar_t__ type; int frequency; } ;
struct file {int dummy; } ;
struct amradio_device {int curfreq; } ;


 int EINVAL ;
 scalar_t__ V4L2_TUNER_RADIO ;
 struct amradio_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_frequency(struct file *file, void *priv,
    struct v4l2_frequency *f)
{
 struct amradio_device *radio = video_drvdata(file);

 if (f->tuner != 0 || f->type != V4L2_TUNER_RADIO)
  return -EINVAL;
 f->type = V4L2_TUNER_RADIO;
 f->frequency = radio->curfreq;

 return 0;
}

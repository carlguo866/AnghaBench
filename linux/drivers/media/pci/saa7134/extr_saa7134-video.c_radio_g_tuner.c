
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_tuner {scalar_t__ index; int audmode; int signal; int rxsubchans; int name; } ;
struct saa7134_dev {TYPE_1__* input; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ amux; } ;


 int EINVAL ;
 scalar_t__ TV ;
 int V4L2_TUNER_MODE_MONO ;
 int V4L2_TUNER_MODE_STEREO ;
 int V4L2_TUNER_SUB_MONO ;
 int V4L2_TUNER_SUB_STEREO ;
 int g_tuner ;
 int saa_call_all (struct saa7134_dev*,int ,int ,struct v4l2_tuner*) ;
 int saa_readb (int) ;
 int strscpy (int ,char*,int) ;
 int tuner ;
 struct saa7134_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int radio_g_tuner(struct file *file, void *priv,
     struct v4l2_tuner *t)
{
 struct saa7134_dev *dev = video_drvdata(file);

 if (0 != t->index)
  return -EINVAL;

 strscpy(t->name, "Radio", sizeof(t->name));

 saa_call_all(dev, tuner, g_tuner, t);
 t->audmode &= V4L2_TUNER_MODE_MONO | V4L2_TUNER_MODE_STEREO;
 if (dev->input->amux == TV) {
  t->signal = 0xf800 - ((saa_readb(0x581) & 0x1f) << 11);
  t->rxsubchans = (saa_readb(0x529) & 0x08) ?
    V4L2_TUNER_SUB_STEREO : V4L2_TUNER_SUB_MONO;
 }
 return 0;
}

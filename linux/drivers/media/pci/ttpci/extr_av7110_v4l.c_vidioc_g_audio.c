
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audio {scalar_t__ index; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct file {int dummy; } ;
struct av7110 {int current_input; } ;


 int EINVAL ;
 int dprintk (int,char*,scalar_t__) ;
 struct v4l2_audio msp3400_v4l2_audio ;

__attribute__((used)) static int vidioc_g_audio(struct file *file, void *fh, struct v4l2_audio *a)
{
 struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
 struct av7110 *av7110 = (struct av7110 *)dev->ext_priv;

 dprintk(2, "VIDIOC_G_AUDIO: %d\n", a->index);
 if (a->index != 0)
  return -EINVAL;
 if (av7110->current_input >= 2)
  return -EINVAL;
 *a = msp3400_v4l2_audio;
 return 0;
}

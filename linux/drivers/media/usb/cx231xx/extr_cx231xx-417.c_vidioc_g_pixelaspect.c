
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fract {int numerator; int denominator; } ;
struct file {int dummy; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct TYPE_2__ {int id; } ;
struct cx231xx {TYPE_1__ encodernorm; } ;


 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_STD_625_50 ;

__attribute__((used)) static int vidioc_g_pixelaspect(struct file *file, void *priv,
    int type, struct v4l2_fract *f)
{
 struct cx231xx_fh *fh = priv;
 struct cx231xx *dev = fh->dev;
 bool is_50hz = dev->encodernorm.id & V4L2_STD_625_50;

 if (type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 f->numerator = is_50hz ? 54 : 11;
 f->denominator = is_50hz ? 59 : 10;

 return 0;
}

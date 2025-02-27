
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_crop {scalar_t__ type; int c; } ;
struct saa7134_fh {struct saa7134_dev* dev; } ;
struct saa7134_dev {int crop_current; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OVERLAY ;

__attribute__((used)) static int saa7134_g_crop(struct file *file, void *f, struct v4l2_crop *crop)
{
 struct saa7134_fh *fh = f;
 struct saa7134_dev *dev = fh->dev;

 if (crop->type != V4L2_BUF_TYPE_VIDEO_CAPTURE &&
     crop->type != V4L2_BUF_TYPE_VIDEO_OVERLAY)
  return -EINVAL;
 crop->c = dev->crop_current;
 return 0;
}

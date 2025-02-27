
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int width; int height; int bytesperline; int sizeimage; int field; int colorspace; int pixelformat; } ;
struct TYPE_6__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct file {int dummy; } ;
struct em28xx_fh {struct em28xx* dev; } ;
struct em28xx {int width; int height; scalar_t__ interlaced; scalar_t__ progressive; TYPE_1__* format; } ;
struct TYPE_4__ {int depth; int fourcc; } ;


 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_INTERLACED ;
 int V4L2_FIELD_NONE ;
 int V4L2_FIELD_TOP ;

__attribute__((used)) static int vidioc_g_fmt_vid_cap(struct file *file, void *priv,
     struct v4l2_format *f)
{
 struct em28xx_fh *fh = priv;
 struct em28xx *dev = fh->dev;

 f->fmt.pix.width = dev->width;
 f->fmt.pix.height = dev->height;
 f->fmt.pix.pixelformat = dev->format->fourcc;
 f->fmt.pix.bytesperline = (dev->width * dev->format->depth + 7) >> 3;
 f->fmt.pix.sizeimage = f->fmt.pix.bytesperline * dev->height;
 f->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;


 if (dev->progressive)
  f->fmt.pix.field = V4L2_FIELD_NONE;
 else
  f->fmt.pix.field = dev->interlaced ?
      V4L2_FIELD_INTERLACED : V4L2_FIELD_TOP;
 return 0;
}

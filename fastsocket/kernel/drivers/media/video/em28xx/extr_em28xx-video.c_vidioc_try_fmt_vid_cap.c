
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int width; unsigned int height; int bytesperline; unsigned int sizeimage; int field; int colorspace; int pixelformat; } ;
struct TYPE_6__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct file {int dummy; } ;
struct em28xx_fmt {int depth; int fourcc; } ;
struct em28xx_fh {struct em28xx* dev; } ;
struct TYPE_4__ {scalar_t__ is_em2800; } ;
struct em28xx {int width; scalar_t__ interlaced; scalar_t__ progressive; TYPE_1__ board; } ;


 int EINVAL ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_INTERLACED ;
 int V4L2_FIELD_NONE ;
 int V4L2_FIELD_TOP ;
 int em28xx_videodbg (char*,int ) ;
 struct em28xx_fmt* format_by_fourcc (int ) ;
 int get_scale (struct em28xx*,unsigned int,unsigned int,unsigned int*,unsigned int*) ;
 unsigned int norm_maxh (struct em28xx*) ;
 unsigned int norm_maxw (struct em28xx*) ;
 int v4l_bound_align_image (unsigned int*,int,unsigned int,int,unsigned int*,int,unsigned int,int,int ) ;

__attribute__((used)) static int vidioc_try_fmt_vid_cap(struct file *file, void *priv,
   struct v4l2_format *f)
{
 struct em28xx_fh *fh = priv;
 struct em28xx *dev = fh->dev;
 unsigned int width = f->fmt.pix.width;
 unsigned int height = f->fmt.pix.height;
 unsigned int maxw = norm_maxw(dev);
 unsigned int maxh = norm_maxh(dev);
 unsigned int hscale, vscale;
 struct em28xx_fmt *fmt;

 fmt = format_by_fourcc(f->fmt.pix.pixelformat);
 if (!fmt) {
  em28xx_videodbg("Fourcc format (%08x) invalid.\n",
    f->fmt.pix.pixelformat);
  return -EINVAL;
 }

 if (dev->board.is_em2800) {

  height = height > (3 * maxh / 4) ? maxh : maxh / 2;
  width = width > (3 * maxw / 4) ? maxw : maxw / 2;
 } else {


  v4l_bound_align_image(&width, 48, maxw, 1, &height, 32, maxh,
          1, 0);
 }

 get_scale(dev, width, height, &hscale, &vscale);

 width = (((unsigned long)maxw) << 12) / (hscale + 4096L);
 height = (((unsigned long)maxh) << 12) / (vscale + 4096L);

 f->fmt.pix.width = width;
 f->fmt.pix.height = height;
 f->fmt.pix.pixelformat = fmt->fourcc;
 f->fmt.pix.bytesperline = (dev->width * fmt->depth + 7) >> 3;
 f->fmt.pix.sizeimage = f->fmt.pix.bytesperline * height;
 f->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;
 if (dev->progressive)
  f->fmt.pix.field = V4L2_FIELD_NONE;
 else
  f->fmt.pix.field = dev->interlaced ?
      V4L2_FIELD_INTERLACED : V4L2_FIELD_TOP;

 return 0;
}

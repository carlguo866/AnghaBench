
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int width; int height; int bytesperline; int sizeimage; int colorspace; int pixelformat; int field; } ;
struct TYPE_6__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct file {int dummy; } ;
struct cx88_core {int width; int height; int field; } ;
struct cx8800_dev {TYPE_1__* fmt; struct cx88_core* core; } ;
struct TYPE_4__ {int depth; int fourcc; } ;


 int V4L2_COLORSPACE_SMPTE170M ;
 struct cx8800_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_format *f)
{
 struct cx8800_dev *dev = video_drvdata(file);
 struct cx88_core *core = dev->core;

 f->fmt.pix.width = core->width;
 f->fmt.pix.height = core->height;
 f->fmt.pix.field = core->field;
 f->fmt.pix.pixelformat = dev->fmt->fourcc;
 f->fmt.pix.bytesperline =
  (f->fmt.pix.width * dev->fmt->depth) >> 3;
 f->fmt.pix.sizeimage =
  f->fmt.pix.height * f->fmt.pix.bytesperline;
 f->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;
 return 0;
}

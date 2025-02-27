
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int width; unsigned int height; int bytesperline; int sizeimage; int field; int colorspace; int pixelformat; } ;
struct TYPE_5__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct tw686x_video_channel {int video_standard; struct tw686x_dev* dev; } ;
struct tw686x_format {int depth; int fourcc; } ;
struct tw686x_dev {TYPE_3__* dma_ops; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int field; } ;


 unsigned int TW686X_VIDEO_HEIGHT (int ) ;
 int TW686X_VIDEO_WIDTH ;
 int V4L2_COLORSPACE_SMPTE170M ;
 struct tw686x_format* format_by_fourcc (int ) ;
 struct tw686x_format* formats ;
 struct tw686x_video_channel* video_drvdata (struct file*) ;

__attribute__((used)) static int tw686x_try_fmt_vid_cap(struct file *file, void *priv,
      struct v4l2_format *f)
{
 struct tw686x_video_channel *vc = video_drvdata(file);
 struct tw686x_dev *dev = vc->dev;
 unsigned int video_height = TW686X_VIDEO_HEIGHT(vc->video_standard);
 const struct tw686x_format *format;

 format = format_by_fourcc(f->fmt.pix.pixelformat);
 if (!format) {
  format = &formats[0];
  f->fmt.pix.pixelformat = format->fourcc;
 }

 if (f->fmt.pix.width <= TW686X_VIDEO_WIDTH / 2)
  f->fmt.pix.width = TW686X_VIDEO_WIDTH / 2;
 else
  f->fmt.pix.width = TW686X_VIDEO_WIDTH;

 if (f->fmt.pix.height <= video_height / 2)
  f->fmt.pix.height = video_height / 2;
 else
  f->fmt.pix.height = video_height;

 f->fmt.pix.bytesperline = (f->fmt.pix.width * format->depth) / 8;
 f->fmt.pix.sizeimage = f->fmt.pix.height * f->fmt.pix.bytesperline;
 f->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;
 f->fmt.pix.field = dev->dma_ops->field;

 return 0;
}

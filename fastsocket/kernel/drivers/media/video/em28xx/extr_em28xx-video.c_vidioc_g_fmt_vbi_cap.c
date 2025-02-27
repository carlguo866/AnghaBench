
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sampling_rate; int* start; int * count; scalar_t__ flags; scalar_t__ offset; int sample_format; int samples_per_line; } ;
struct TYPE_4__ {TYPE_1__ vbi; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct em28xx_fh {struct em28xx* dev; } ;
struct em28xx {int norm; int vbi_height; int vbi_width; } ;


 int V4L2_PIX_FMT_GREY ;
 int V4L2_STD_525_60 ;
 int V4L2_STD_625_50 ;

__attribute__((used)) static int vidioc_g_fmt_vbi_cap(struct file *file, void *priv,
    struct v4l2_format *format)
{
 struct em28xx_fh *fh = priv;
 struct em28xx *dev = fh->dev;

 format->fmt.vbi.samples_per_line = dev->vbi_width;
 format->fmt.vbi.sample_format = V4L2_PIX_FMT_GREY;
 format->fmt.vbi.offset = 0;
 format->fmt.vbi.flags = 0;
 format->fmt.vbi.sampling_rate = 6750000 * 4 / 2;
 format->fmt.vbi.count[0] = dev->vbi_height;
 format->fmt.vbi.count[1] = dev->vbi_height;


 if (dev->norm & V4L2_STD_525_60) {

  format->fmt.vbi.start[0] = 10;
  format->fmt.vbi.start[1] = 273;
 } else if (dev->norm & V4L2_STD_625_50) {

  format->fmt.vbi.start[0] = 6;
  format->fmt.vbi.start[1] = 318;
 }

 return 0;
}

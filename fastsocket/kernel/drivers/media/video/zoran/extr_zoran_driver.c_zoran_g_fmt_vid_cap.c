
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int height; int bytesperline; TYPE_1__* format; int width; } ;
struct zoran_fh {scalar_t__ map_mode; TYPE_2__ v4l_settings; struct zoran* zr; } ;
struct zoran {int resource_lock; } ;
struct TYPE_7__ {int height; int sizeimage; int bytesperline; int field; int colorspace; int pixelformat; int width; } ;
struct TYPE_8__ {TYPE_3__ pix; } ;
struct v4l2_format {TYPE_4__ fmt; } ;
struct file {int dummy; } ;
struct TYPE_5__ {int colorspace; int fourcc; } ;


 int BUZ_MAX_HEIGHT ;
 int V4L2_FIELD_INTERLACED ;
 int V4L2_FIELD_TOP ;
 scalar_t__ ZORAN_MAP_MODE_RAW ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int zoran_g_fmt_vid_out (struct file*,struct zoran_fh*,struct v4l2_format*) ;

__attribute__((used)) static int zoran_g_fmt_vid_cap(struct file *file, void *__fh,
     struct v4l2_format *fmt)
{
 struct zoran_fh *fh = __fh;
 struct zoran *zr = fh->zr;

 if (fh->map_mode != ZORAN_MAP_MODE_RAW)
  return zoran_g_fmt_vid_out(file, fh, fmt);

 mutex_lock(&zr->resource_lock);
 fmt->fmt.pix.width = fh->v4l_settings.width;
 fmt->fmt.pix.height = fh->v4l_settings.height;
 fmt->fmt.pix.sizeimage = fh->v4l_settings.bytesperline *
     fh->v4l_settings.height;
 fmt->fmt.pix.pixelformat = fh->v4l_settings.format->fourcc;
 fmt->fmt.pix.colorspace = fh->v4l_settings.format->colorspace;
 fmt->fmt.pix.bytesperline = fh->v4l_settings.bytesperline;
 if (BUZ_MAX_HEIGHT < (fh->v4l_settings.height * 2))
  fmt->fmt.pix.field = V4L2_FIELD_INTERLACED;
 else
  fmt->fmt.pix.field = V4L2_FIELD_TOP;
 mutex_unlock(&zr->resource_lock);
 return 0;
}

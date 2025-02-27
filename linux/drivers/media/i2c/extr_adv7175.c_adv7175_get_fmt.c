
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int field; scalar_t__ height; scalar_t__ width; int colorspace; int code; } ;
struct v4l2_subdev_format {scalar_t__ pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 int MEDIA_BUS_FMT_UYVY8_1X16 ;
 int MEDIA_BUS_FMT_UYVY8_2X8 ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_ANY ;
 int adv7175_read (struct v4l2_subdev*,int) ;

__attribute__((used)) static int adv7175_get_fmt(struct v4l2_subdev *sd,
  struct v4l2_subdev_pad_config *cfg,
  struct v4l2_subdev_format *format)
{
 struct v4l2_mbus_framefmt *mf = &format->format;
 u8 val = adv7175_read(sd, 0x7);

 if (format->pad)
  return -EINVAL;

 if ((val & 0x40) == (1 << 6))
  mf->code = MEDIA_BUS_FMT_UYVY8_1X16;
 else
  mf->code = MEDIA_BUS_FMT_UYVY8_2X8;

 mf->colorspace = V4L2_COLORSPACE_SMPTE170M;
 mf->width = 0;
 mf->height = 0;
 mf->field = V4L2_FIELD_ANY;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_rect {int dummy; } ;
struct isp_ccdc_device {struct v4l2_rect crop; int subdev; } ;
typedef enum v4l2_subdev_format_whence { ____Placeholder_v4l2_subdev_format_whence } v4l2_subdev_format_whence ;


 int CCDC_PAD_SOURCE_OF ;
 int V4L2_SUBDEV_FORMAT_TRY ;
 struct v4l2_rect* v4l2_subdev_get_try_crop (int *,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static struct v4l2_rect *
__ccdc_get_crop(struct isp_ccdc_device *ccdc, struct v4l2_subdev_pad_config *cfg,
  enum v4l2_subdev_format_whence which)
{
 if (which == V4L2_SUBDEV_FORMAT_TRY)
  return v4l2_subdev_get_try_crop(&ccdc->subdev, cfg, CCDC_PAD_SOURCE_OF);
 else
  return &ccdc->crop;
}

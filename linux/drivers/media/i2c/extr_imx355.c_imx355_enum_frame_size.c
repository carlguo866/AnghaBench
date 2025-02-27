
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_frame_size_enum {size_t index; scalar_t__ code; int min_height; int max_height; int min_width; int max_width; } ;
struct v4l2_subdev {int dummy; } ;
struct imx355 {int mutex; } ;
struct TYPE_3__ {int height; int width; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 scalar_t__ imx355_get_format_code (struct imx355*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* supported_modes ;
 struct imx355* to_imx355 (struct v4l2_subdev*) ;

__attribute__((used)) static int imx355_enum_frame_size(struct v4l2_subdev *sd,
      struct v4l2_subdev_pad_config *cfg,
      struct v4l2_subdev_frame_size_enum *fse)
{
 struct imx355 *imx355 = to_imx355(sd);

 if (fse->index >= ARRAY_SIZE(supported_modes))
  return -EINVAL;

 mutex_lock(&imx355->mutex);
 if (fse->code != imx355_get_format_code(imx355)) {
  mutex_unlock(&imx355->mutex);
  return -EINVAL;
 }
 mutex_unlock(&imx355->mutex);

 fse->min_width = supported_modes[fse->index].width;
 fse->max_width = fse->min_width;
 fse->min_height = supported_modes[fse->index].height;
 fse->max_height = fse->min_height;

 return 0;
}

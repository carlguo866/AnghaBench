
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_config {int flags; int type; } ;
struct soc_camera_subdev_desc {int dummy; } ;
struct i2c_client {int dummy; } ;


 int V4L2_MBUS_DATA_ACTIVE_HIGH ;
 int V4L2_MBUS_HSYNC_ACTIVE_HIGH ;
 int V4L2_MBUS_MASTER ;
 int V4L2_MBUS_PARALLEL ;
 int V4L2_MBUS_PCLK_SAMPLE_FALLING ;
 int V4L2_MBUS_PCLK_SAMPLE_RISING ;
 int V4L2_MBUS_VSYNC_ACTIVE_HIGH ;
 int soc_camera_apply_board_flags (struct soc_camera_subdev_desc*,struct v4l2_mbus_config*) ;
 struct soc_camera_subdev_desc* soc_camera_i2c_to_desc (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9t031_g_mbus_config(struct v4l2_subdev *sd,
    struct v4l2_mbus_config *cfg)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct soc_camera_subdev_desc *ssdd = soc_camera_i2c_to_desc(client);

 cfg->flags = V4L2_MBUS_MASTER | V4L2_MBUS_PCLK_SAMPLE_RISING |
  V4L2_MBUS_PCLK_SAMPLE_FALLING | V4L2_MBUS_HSYNC_ACTIVE_HIGH |
  V4L2_MBUS_VSYNC_ACTIVE_HIGH | V4L2_MBUS_DATA_ACTIVE_HIGH;
 cfg->type = V4L2_MBUS_PARALLEL;
 cfg->flags = soc_camera_apply_board_flags(ssdd, cfg);

 return 0;
}

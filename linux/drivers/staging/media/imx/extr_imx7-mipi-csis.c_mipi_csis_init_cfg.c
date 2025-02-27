
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;


 unsigned int CSIS_PADS_NUM ;
 int MIPI_CSIS_DEF_PIX_HEIGHT ;
 int MIPI_CSIS_DEF_PIX_WIDTH ;
 int V4L2_FIELD_NONE ;
 int imx_media_init_mbus_fmt (struct v4l2_mbus_framefmt*,int ,int ,int ,int ,int *) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,unsigned int) ;

__attribute__((used)) static int mipi_csis_init_cfg(struct v4l2_subdev *mipi_sd,
         struct v4l2_subdev_pad_config *cfg)
{
 struct v4l2_mbus_framefmt *mf;
 unsigned int i;
 int ret;

 for (i = 0; i < CSIS_PADS_NUM; i++) {
  mf = v4l2_subdev_get_try_format(mipi_sd, cfg, i);

  ret = imx_media_init_mbus_fmt(mf, MIPI_CSIS_DEF_PIX_HEIGHT,
           MIPI_CSIS_DEF_PIX_WIDTH, 0,
           V4L2_FIELD_NONE, ((void*)0));
  if (ret < 0)
   return ret;
 }

 return 0;
}

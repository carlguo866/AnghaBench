
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int xfer_func; int quantization; int ycbcr_enc; int field; int colorspace; int code; int height; int width; } ;
struct mt9m001 {TYPE_1__* fmts; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int colorspace; int code; } ;


 int MT9M001_MAX_HEIGHT ;
 int MT9M001_MAX_WIDTH ;
 int V4L2_FIELD_NONE ;
 int V4L2_QUANTIZATION_DEFAULT ;
 int V4L2_XFER_FUNC_DEFAULT ;
 int V4L2_YCBCR_ENC_DEFAULT ;
 struct mt9m001* to_mt9m001 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static int mt9m001_init_cfg(struct v4l2_subdev *sd,
       struct v4l2_subdev_pad_config *cfg)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct mt9m001 *mt9m001 = to_mt9m001(client);
 struct v4l2_mbus_framefmt *try_fmt =
  v4l2_subdev_get_try_format(sd, cfg, 0);

 try_fmt->width = MT9M001_MAX_WIDTH;
 try_fmt->height = MT9M001_MAX_HEIGHT;
 try_fmt->code = mt9m001->fmts[0].code;
 try_fmt->colorspace = mt9m001->fmts[0].colorspace;
 try_fmt->field = V4L2_FIELD_NONE;
 try_fmt->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
 try_fmt->quantization = V4L2_QUANTIZATION_DEFAULT;
 try_fmt->xfer_func = V4L2_XFER_FUNC_DEFAULT;

 return 0;
}

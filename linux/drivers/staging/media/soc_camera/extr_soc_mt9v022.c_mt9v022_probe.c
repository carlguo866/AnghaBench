
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct soc_camera_subdev_desc {struct mt9v022_platform_data* drv_priv; } ;
struct mt9v022_platform_data {int y_skip_top; } ;
struct TYPE_9__ {int error; } ;
struct TYPE_7__ {int height; int width; int top; int left; } ;
struct TYPE_8__ {TYPE_3__* ctrl_handler; } ;
struct mt9v022 {TYPE_3__ hdl; int clk; TYPE_1__ rect; int y_skip_top; int chip_control; void* autogain; void* autoexposure; TYPE_2__ subdev; void* vblank; void* hblank; void* exposure; void* gain; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dev; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 scalar_t__ IS_ERR (int ) ;
 int MT9V022_CHIP_CONTROL_DEFAULT ;
 int MT9V022_COLUMN_SKIP ;
 int MT9V022_HORIZONTAL_BLANKING_DEF ;
 int MT9V022_HORIZONTAL_BLANKING_MAX ;
 int MT9V022_HORIZONTAL_BLANKING_MIN ;
 int MT9V022_MAX_HEIGHT ;
 int MT9V022_MAX_WIDTH ;
 int MT9V022_ROW_SKIP ;
 int MT9V022_VERTICAL_BLANKING_DEF ;
 int MT9V022_VERTICAL_BLANKING_MAX ;
 int MT9V022_VERTICAL_BLANKING_MIN ;
 int PTR_ERR (int ) ;
 int V4L2_CID_AUTOGAIN ;
 int V4L2_CID_EXPOSURE ;
 int V4L2_CID_EXPOSURE_AUTO ;
 int V4L2_CID_GAIN ;
 int V4L2_CID_HBLANK ;
 int V4L2_CID_HFLIP ;
 int V4L2_CID_VBLANK ;
 int V4L2_CID_VFLIP ;
 int V4L2_EXPOSURE_AUTO ;
 int V4L2_EXPOSURE_MANUAL ;
 int dev_err (int *,char*,...) ;
 int dev_warn (int *,char*) ;
 struct mt9v022* devm_kzalloc (int *,int,int ) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int mt9v022_ctrl_ops ;
 int mt9v022_subdev_ops ;
 int mt9v022_video_probe (struct i2c_client*) ;
 struct soc_camera_subdev_desc* soc_camera_i2c_to_desc (struct i2c_client*) ;
 int v4l2_clk_get (int *,char*) ;
 int v4l2_clk_put (int ) ;
 int v4l2_ctrl_auto_cluster (int,void**,int ,int) ;
 int v4l2_ctrl_handler_free (TYPE_3__*) ;
 int v4l2_ctrl_handler_init (TYPE_3__*,int) ;
 void* v4l2_ctrl_new_std (TYPE_3__*,int *,int ,int,int,int,int) ;
 void* v4l2_ctrl_new_std_menu (TYPE_3__*,int *,int ,int,int ,int ) ;
 int v4l2_i2c_subdev_init (TYPE_2__*,struct i2c_client*,int *) ;

__attribute__((used)) static int mt9v022_probe(struct i2c_client *client,
    const struct i2c_device_id *did)
{
 struct mt9v022 *mt9v022;
 struct soc_camera_subdev_desc *ssdd = soc_camera_i2c_to_desc(client);
 struct i2c_adapter *adapter = client->adapter;
 struct mt9v022_platform_data *pdata;
 int ret;

 if (!ssdd) {
  dev_err(&client->dev, "MT9V022 driver needs platform data\n");
  return -EINVAL;
 }

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_WORD_DATA)) {
  dev_warn(&adapter->dev,
    "I2C-Adapter doesn't support I2C_FUNC_SMBUS_WORD\n");
  return -EIO;
 }

 mt9v022 = devm_kzalloc(&client->dev, sizeof(struct mt9v022), GFP_KERNEL);
 if (!mt9v022)
  return -ENOMEM;

 pdata = ssdd->drv_priv;
 v4l2_i2c_subdev_init(&mt9v022->subdev, client, &mt9v022_subdev_ops);
 v4l2_ctrl_handler_init(&mt9v022->hdl, 6);
 v4l2_ctrl_new_std(&mt9v022->hdl, &mt9v022_ctrl_ops,
   V4L2_CID_VFLIP, 0, 1, 1, 0);
 v4l2_ctrl_new_std(&mt9v022->hdl, &mt9v022_ctrl_ops,
   V4L2_CID_HFLIP, 0, 1, 1, 0);
 mt9v022->autogain = v4l2_ctrl_new_std(&mt9v022->hdl, &mt9v022_ctrl_ops,
   V4L2_CID_AUTOGAIN, 0, 1, 1, 1);
 mt9v022->gain = v4l2_ctrl_new_std(&mt9v022->hdl, &mt9v022_ctrl_ops,
   V4L2_CID_GAIN, 0, 127, 1, 64);





 mt9v022->autoexposure = v4l2_ctrl_new_std_menu(&mt9v022->hdl,
   &mt9v022_ctrl_ops, V4L2_CID_EXPOSURE_AUTO, 1, 0,
   V4L2_EXPOSURE_AUTO);
 mt9v022->exposure = v4l2_ctrl_new_std(&mt9v022->hdl, &mt9v022_ctrl_ops,
   V4L2_CID_EXPOSURE, 1, 255, 1, 255);

 mt9v022->hblank = v4l2_ctrl_new_std(&mt9v022->hdl, &mt9v022_ctrl_ops,
   V4L2_CID_HBLANK, MT9V022_HORIZONTAL_BLANKING_MIN,
   MT9V022_HORIZONTAL_BLANKING_MAX, 1,
   MT9V022_HORIZONTAL_BLANKING_DEF);

 mt9v022->vblank = v4l2_ctrl_new_std(&mt9v022->hdl, &mt9v022_ctrl_ops,
   V4L2_CID_VBLANK, MT9V022_VERTICAL_BLANKING_MIN,
   MT9V022_VERTICAL_BLANKING_MAX, 1,
   MT9V022_VERTICAL_BLANKING_DEF);

 mt9v022->subdev.ctrl_handler = &mt9v022->hdl;
 if (mt9v022->hdl.error) {
  int err = mt9v022->hdl.error;

  dev_err(&client->dev, "control initialisation err %d\n", err);
  return err;
 }
 v4l2_ctrl_auto_cluster(2, &mt9v022->autoexposure,
    V4L2_EXPOSURE_MANUAL, 1);
 v4l2_ctrl_auto_cluster(2, &mt9v022->autogain, 0, 1);

 mt9v022->chip_control = MT9V022_CHIP_CONTROL_DEFAULT;





 mt9v022->y_skip_top = pdata ? pdata->y_skip_top : 0;
 mt9v022->rect.left = MT9V022_COLUMN_SKIP;
 mt9v022->rect.top = MT9V022_ROW_SKIP;
 mt9v022->rect.width = MT9V022_MAX_WIDTH;
 mt9v022->rect.height = MT9V022_MAX_HEIGHT;

 mt9v022->clk = v4l2_clk_get(&client->dev, "mclk");
 if (IS_ERR(mt9v022->clk)) {
  ret = PTR_ERR(mt9v022->clk);
  goto eclkget;
 }

 ret = mt9v022_video_probe(client);
 if (ret) {
  v4l2_clk_put(mt9v022->clk);
eclkget:
  v4l2_ctrl_handler_free(&mt9v022->hdl);
 }

 return ret;
}

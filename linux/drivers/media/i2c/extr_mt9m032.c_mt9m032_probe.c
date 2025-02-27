
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_12__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct mt9m032_platform_data {int pix_clock; scalar_t__ invert_pixclock; } ;
struct TYPE_22__ {int error; } ;
struct TYPE_23__ {int function; } ;
struct TYPE_21__ {TYPE_9__ entity; TYPE_5__* ctrl_handler; int flags; } ;
struct TYPE_16__ {int flags; } ;
struct TYPE_20__ {int colorspace; int field; int code; int height; int width; } ;
struct TYPE_19__ {int height; int width; int top; int left; } ;
struct TYPE_18__ {int numerator; int denominator; } ;
struct mt9m032 {int lock; TYPE_5__ ctrls; TYPE_4__ subdev; struct mt9m032_platform_data* pdata; TYPE_10__ pad; void* hflip; void* vflip; TYPE_3__ format; TYPE_2__ crop; TYPE_1__ frame_interval; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_17__ {struct mt9m032_platform_data* platform_data; } ;
struct i2c_client {TYPE_12__ dev; int addr; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 int MEDIA_BUS_FMT_Y8_1X8 ;
 int MEDIA_ENT_F_CAM_SENSOR ;
 int MEDIA_PAD_FL_SOURCE ;
 int MT9M032_CHIP_VERSION ;
 int MT9M032_CHIP_VERSION_VALUE ;
 int MT9M032_COLUMN_SIZE_DEF ;
 int MT9M032_COLUMN_START_DEF ;
 int MT9M032_PIX_CLK_CTRL ;
 int MT9M032_PIX_CLK_CTRL_INV_PIXCLK ;
 int MT9M032_RESET ;
 int MT9M032_RESTART ;
 int MT9M032_ROW_SIZE_DEF ;
 int MT9M032_ROW_START_DEF ;
 int MT9M032_SHUTTER_WIDTH_DEF ;
 int MT9M032_SHUTTER_WIDTH_MAX ;
 int MT9M032_SHUTTER_WIDTH_MIN ;
 int V4L2_CID_EXPOSURE ;
 int V4L2_CID_GAIN ;
 int V4L2_CID_HFLIP ;
 int V4L2_CID_PIXEL_RATE ;
 int V4L2_CID_VFLIP ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int dev_err (TYPE_12__*,char*,...) ;
 int dev_info (TYPE_12__*,char*,int ) ;
 int dev_warn (TYPE_12__*,char*) ;
 struct mt9m032* devm_kzalloc (TYPE_12__*,int,int ) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int media_entity_cleanup (TYPE_9__*) ;
 int media_entity_pads_init (TYPE_9__*,int,TYPE_10__*) ;
 int msleep (int) ;
 int mt9m032_ctrl_ops ;
 int mt9m032_ops ;
 int mt9m032_read (struct i2c_client*,int ) ;
 int mt9m032_setup_pll (struct mt9m032*) ;
 int mt9m032_update_geom_timing (struct mt9m032*) ;
 int mt9m032_write (struct i2c_client*,int,int) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int update_formatter2 (struct mt9m032*,int) ;
 int usleep_range (int,int) ;
 int v4l2_ctrl_cluster (int,void**) ;
 int v4l2_ctrl_handler_free (TYPE_5__*) ;
 int v4l2_ctrl_handler_init (TYPE_5__*,int) ;
 int v4l2_ctrl_handler_setup (TYPE_5__*) ;
 void* v4l2_ctrl_new_std (TYPE_5__*,int *,int ,int,int,int,int) ;
 int v4l2_i2c_subdev_init (TYPE_4__*,struct i2c_client*,int *) ;

__attribute__((used)) static int mt9m032_probe(struct i2c_client *client,
    const struct i2c_device_id *devid)
{
 struct mt9m032_platform_data *pdata = client->dev.platform_data;
 struct i2c_adapter *adapter = client->adapter;
 struct mt9m032 *sensor;
 int chip_version;
 int ret;

 if (pdata == ((void*)0)) {
  dev_err(&client->dev, "No platform data\n");
  return -EINVAL;
 }

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_WORD_DATA)) {
  dev_warn(&client->dev,
    "I2C-Adapter doesn't support I2C_FUNC_SMBUS_WORD\n");
  return -EIO;
 }

 if (!client->dev.platform_data)
  return -ENODEV;

 sensor = devm_kzalloc(&client->dev, sizeof(*sensor), GFP_KERNEL);
 if (sensor == ((void*)0))
  return -ENOMEM;

 mutex_init(&sensor->lock);

 sensor->pdata = pdata;

 v4l2_i2c_subdev_init(&sensor->subdev, client, &mt9m032_ops);
 sensor->subdev.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;

 chip_version = mt9m032_read(client, MT9M032_CHIP_VERSION);
 if (chip_version != MT9M032_CHIP_VERSION_VALUE) {
  dev_err(&client->dev, "MT9M032 not detected, wrong version "
   "0x%04x\n", chip_version);
  ret = -ENODEV;
  goto error_sensor;
 }

 dev_info(&client->dev, "MT9M032 detected at address 0x%02x\n",
   client->addr);

 sensor->frame_interval.numerator = 1;
 sensor->frame_interval.denominator = 30;

 sensor->crop.left = MT9M032_COLUMN_START_DEF;
 sensor->crop.top = MT9M032_ROW_START_DEF;
 sensor->crop.width = MT9M032_COLUMN_SIZE_DEF;
 sensor->crop.height = MT9M032_ROW_SIZE_DEF;

 sensor->format.width = sensor->crop.width;
 sensor->format.height = sensor->crop.height;
 sensor->format.code = MEDIA_BUS_FMT_Y8_1X8;
 sensor->format.field = V4L2_FIELD_NONE;
 sensor->format.colorspace = V4L2_COLORSPACE_SRGB;

 v4l2_ctrl_handler_init(&sensor->ctrls, 5);

 v4l2_ctrl_new_std(&sensor->ctrls, &mt9m032_ctrl_ops,
     V4L2_CID_GAIN, 0, 127, 1, 64);

 sensor->hflip = v4l2_ctrl_new_std(&sensor->ctrls,
       &mt9m032_ctrl_ops,
       V4L2_CID_HFLIP, 0, 1, 1, 0);
 sensor->vflip = v4l2_ctrl_new_std(&sensor->ctrls,
       &mt9m032_ctrl_ops,
       V4L2_CID_VFLIP, 0, 1, 1, 0);

 v4l2_ctrl_new_std(&sensor->ctrls, &mt9m032_ctrl_ops,
     V4L2_CID_EXPOSURE, MT9M032_SHUTTER_WIDTH_MIN,
     MT9M032_SHUTTER_WIDTH_MAX, 1,
     MT9M032_SHUTTER_WIDTH_DEF);
 v4l2_ctrl_new_std(&sensor->ctrls, &mt9m032_ctrl_ops,
     V4L2_CID_PIXEL_RATE, pdata->pix_clock,
     pdata->pix_clock, 1, pdata->pix_clock);

 if (sensor->ctrls.error) {
  ret = sensor->ctrls.error;
  dev_err(&client->dev, "control initialization error %d\n", ret);
  goto error_ctrl;
 }

 v4l2_ctrl_cluster(2, &sensor->hflip);

 sensor->subdev.ctrl_handler = &sensor->ctrls;
 sensor->subdev.entity.function = MEDIA_ENT_F_CAM_SENSOR;
 sensor->pad.flags = MEDIA_PAD_FL_SOURCE;
 ret = media_entity_pads_init(&sensor->subdev.entity, 1, &sensor->pad);
 if (ret < 0)
  goto error_ctrl;

 ret = mt9m032_write(client, MT9M032_RESET, 1);
 if (ret < 0)
  goto error_entity;
 ret = mt9m032_write(client, MT9M032_RESET, 0);
 if (ret < 0)
  goto error_entity;

 ret = mt9m032_setup_pll(sensor);
 if (ret < 0)
  goto error_entity;
 usleep_range(10000, 11000);

 ret = v4l2_ctrl_handler_setup(&sensor->ctrls);
 if (ret < 0)
  goto error_entity;


 ret = mt9m032_update_geom_timing(sensor);
 if (ret < 0)
  goto error_entity;

 ret = mt9m032_write(client, 0x41, 0x0000);
 if (ret < 0)
  goto error_entity;
 ret = mt9m032_write(client, 0x42, 0x0003);
 if (ret < 0)
  goto error_entity;
 ret = mt9m032_write(client, 0x43, 0x0003);
 if (ret < 0)
  goto error_entity;
 ret = mt9m032_write(client, 0x7f, 0x0000);
 if (ret < 0)
  goto error_entity;
 if (sensor->pdata->invert_pixclock) {
  ret = mt9m032_write(client, MT9M032_PIX_CLK_CTRL,
        MT9M032_PIX_CLK_CTRL_INV_PIXCLK);
  if (ret < 0)
   goto error_entity;
 }

 ret = mt9m032_write(client, MT9M032_RESTART, 1);
 if (ret < 0)
  goto error_entity;
 msleep(100);
 ret = mt9m032_write(client, MT9M032_RESTART, 0);
 if (ret < 0)
  goto error_entity;
 msleep(100);
 ret = update_formatter2(sensor, 0);
 if (ret < 0)
  goto error_entity;

 return ret;

error_entity:
 media_entity_cleanup(&sensor->subdev.entity);
error_ctrl:
 v4l2_ctrl_handler_free(&sensor->ctrls);
error_sensor:
 mutex_destroy(&sensor->lock);
 return ret;
}

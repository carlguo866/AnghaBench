
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int function; } ;
struct v4l2_subdev {TYPE_1__ entity; int * internal_ops; int flags; int name; } ;
struct m5mols_platform_data {int gpio_reset; scalar_t__ reset_polarity; int set_power; } ;
struct TYPE_10__ {int flags; } ;
struct m5mols_info {void** ffmt; int res_type; int lock; int irq_waitq; TYPE_2__ pad; struct v4l2_subdev sd; int set_power; struct m5mols_platform_data const* pdata; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_11__ {struct m5mols_platform_data* platform_data; } ;
struct i2c_client {TYPE_4__ dev; int irq; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned long GPIOF_OUT_INIT_HIGH ;
 unsigned long GPIOF_OUT_INIT_LOW ;
 int IRQF_TRIGGER_RISING ;
 int M5MOLS_RESTYPE_MONITOR ;
 int MEDIA_ENT_F_CAM_SENSOR ;
 int MEDIA_PAD_FL_SOURCE ;
 int MODULE_NAME ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int dev_err (TYPE_4__*,char*,...) ;
 int devm_gpio_request_one (TYPE_4__*,int ,unsigned long,char*) ;
 struct m5mols_info* devm_kzalloc (TYPE_4__*,int,int ) ;
 int devm_regulator_bulk_get (TYPE_4__*,int ,int ) ;
 int devm_request_irq (TYPE_4__*,int ,int ,int ,int ,struct v4l2_subdev*) ;
 int gpio_is_valid (int ) ;
 int init_waitqueue_head (int *) ;
 void** m5mols_default_ffmt ;
 int m5mols_fw_start (struct v4l2_subdev*) ;
 int m5mols_init_controls (struct v4l2_subdev*) ;
 int m5mols_irq_handler ;
 int m5mols_ops ;
 int m5mols_sensor_power (struct m5mols_info*,int) ;
 int m5mols_subdev_internal_ops ;
 int media_entity_cleanup (TYPE_1__*) ;
 int media_entity_pads_init (TYPE_1__*,int,TYPE_2__*) ;
 int mutex_init (int *) ;
 int strscpy (int ,int ,int) ;
 int supplies ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;

__attribute__((used)) static int m5mols_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 const struct m5mols_platform_data *pdata = client->dev.platform_data;
 unsigned long gpio_flags;
 struct m5mols_info *info;
 struct v4l2_subdev *sd;
 int ret;

 if (pdata == ((void*)0)) {
  dev_err(&client->dev, "No platform data\n");
  return -EINVAL;
 }

 if (!gpio_is_valid(pdata->gpio_reset)) {
  dev_err(&client->dev, "No valid RESET GPIO specified\n");
  return -EINVAL;
 }

 if (!client->irq) {
  dev_err(&client->dev, "Interrupt not assigned\n");
  return -EINVAL;
 }

 info = devm_kzalloc(&client->dev, sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 info->pdata = pdata;
 info->set_power = pdata->set_power;

 gpio_flags = pdata->reset_polarity
     ? GPIOF_OUT_INIT_HIGH : GPIOF_OUT_INIT_LOW;
 ret = devm_gpio_request_one(&client->dev, pdata->gpio_reset, gpio_flags,
        "M5MOLS_NRST");
 if (ret) {
  dev_err(&client->dev, "Failed to request gpio: %d\n", ret);
  return ret;
 }

 ret = devm_regulator_bulk_get(&client->dev, ARRAY_SIZE(supplies),
          supplies);
 if (ret) {
  dev_err(&client->dev, "Failed to get regulators: %d\n", ret);
  return ret;
 }

 sd = &info->sd;
 v4l2_i2c_subdev_init(sd, client, &m5mols_ops);

 strscpy(sd->name, MODULE_NAME, sizeof(sd->name));
 sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;

 sd->internal_ops = &m5mols_subdev_internal_ops;
 info->pad.flags = MEDIA_PAD_FL_SOURCE;
 ret = media_entity_pads_init(&sd->entity, 1, &info->pad);
 if (ret < 0)
  return ret;
 sd->entity.function = MEDIA_ENT_F_CAM_SENSOR;

 init_waitqueue_head(&info->irq_waitq);
 mutex_init(&info->lock);

 ret = devm_request_irq(&client->dev, client->irq, m5mols_irq_handler,
          IRQF_TRIGGER_RISING, MODULE_NAME, sd);
 if (ret) {
  dev_err(&client->dev, "Interrupt request failed: %d\n", ret);
  goto error;
 }
 info->res_type = M5MOLS_RESTYPE_MONITOR;
 info->ffmt[0] = m5mols_default_ffmt[0];
 info->ffmt[1] = m5mols_default_ffmt[1];

 ret = m5mols_sensor_power(info, 1);
 if (ret)
  goto error;

 ret = m5mols_fw_start(sd);
 if (!ret)
  ret = m5mols_init_controls(sd);

 ret = m5mols_sensor_power(info, 0);
 if (!ret)
  return 0;
error:
 media_entity_cleanup(&sd->entity);
 return ret;
}

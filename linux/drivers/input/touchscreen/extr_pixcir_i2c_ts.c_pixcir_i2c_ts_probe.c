
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ max_fingers; } ;
struct pixcir_ts_platform_data {int y_max; int x_max; TYPE_3__ chip; } ;
struct pixcir_i2c_ts_data {scalar_t__ max_fingers; void* gpio_enable; void* gpio_wake; void* gpio_reset; void* gpio_attb; TYPE_3__* chip; int prop; struct input_dev* input; struct i2c_client* client; } ;
struct TYPE_5__ {struct device* parent; } ;
struct TYPE_4__ {int bustype; } ;
struct input_dev {TYPE_2__ dev; int close; int open; TYPE_1__ id; int name; } ;
struct i2c_device_id {int dummy; } ;
struct device {scalar_t__ of_node; } ;
struct i2c_client {int irq; int name; struct device dev; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int BUS_I2C ;
 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int EV_ABS ;
 int GFP_KERNEL ;
 int GPIOD_IN ;
 int GPIOD_OUT_HIGH ;
 int GPIOD_OUT_LOW ;
 int INPUT_MT_DIRECT ;
 int INPUT_MT_DROP_UNUSED ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 scalar_t__ IS_ERR (void*) ;
 scalar_t__ PIXCIR_MAX_SLOTS ;
 int PIXCIR_POWER_IDLE ;
 int PTR_ERR (void*) ;
 int dev_err (struct device*,char*,...) ;
 struct pixcir_ts_platform_data* dev_get_platdata (struct device*) ;
 int dev_info (struct device*,char*,scalar_t__) ;
 void* devm_gpiod_get (struct device*,char*,int ) ;
 void* devm_gpiod_get_optional (struct device*,char*,int ) ;
 struct input_dev* devm_input_allocate_device (struct device*) ;
 struct pixcir_i2c_ts_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_threaded_irq (struct device*,int ,int *,int ,int,int ,struct pixcir_i2c_ts_data*) ;
 int i2c_set_clientdata (struct i2c_client*,struct pixcir_i2c_ts_data*) ;
 int input_abs_get_max (struct input_dev*,int ) ;
 int input_mt_init_slots (struct input_dev*,scalar_t__,int) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int ,int ,int ) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct pixcir_i2c_ts_data*) ;
 int msleep (int) ;
 int pixcir_input_close ;
 int pixcir_input_open ;
 int pixcir_parse_dt (struct device*,struct pixcir_i2c_ts_data*) ;
 int pixcir_reset (struct pixcir_i2c_ts_data*) ;
 int pixcir_set_power_mode (struct pixcir_i2c_ts_data*,int ) ;
 int pixcir_stop (struct pixcir_i2c_ts_data*) ;
 int pixcir_ts_isr ;
 int touchscreen_parse_properties (struct input_dev*,int,int *) ;

__attribute__((used)) static int pixcir_i2c_ts_probe(struct i2c_client *client,
          const struct i2c_device_id *id)
{
 const struct pixcir_ts_platform_data *pdata =
   dev_get_platdata(&client->dev);
 struct device *dev = &client->dev;
 struct pixcir_i2c_ts_data *tsdata;
 struct input_dev *input;
 int error;

 tsdata = devm_kzalloc(dev, sizeof(*tsdata), GFP_KERNEL);
 if (!tsdata)
  return -ENOMEM;

 if (pdata) {
  tsdata->chip = &pdata->chip;
 } else if (dev->of_node) {
  error = pixcir_parse_dt(dev, tsdata);
  if (error)
   return error;
 } else {
  dev_err(dev, "platform data not defined\n");
  return -EINVAL;
 }

 if (!tsdata->chip->max_fingers) {
  dev_err(dev, "Invalid max_fingers in chip data\n");
  return -EINVAL;
 }

 input = devm_input_allocate_device(dev);
 if (!input) {
  dev_err(dev, "Failed to allocate input device\n");
  return -ENOMEM;
 }

 tsdata->client = client;
 tsdata->input = input;

 input->name = client->name;
 input->id.bustype = BUS_I2C;
 input->open = pixcir_input_open;
 input->close = pixcir_input_close;
 input->dev.parent = dev;

 if (pdata) {
  input_set_abs_params(input, ABS_MT_POSITION_X, 0, pdata->x_max, 0, 0);
  input_set_abs_params(input, ABS_MT_POSITION_Y, 0, pdata->y_max, 0, 0);
 } else {
  input_set_capability(input, EV_ABS, ABS_MT_POSITION_X);
  input_set_capability(input, EV_ABS, ABS_MT_POSITION_Y);
  touchscreen_parse_properties(input, 1, &tsdata->prop);
  if (!input_abs_get_max(input, ABS_MT_POSITION_X) ||
      !input_abs_get_max(input, ABS_MT_POSITION_Y)) {
   dev_err(dev, "Touchscreen size is not specified\n");
   return -EINVAL;
  }
 }

 tsdata->max_fingers = tsdata->chip->max_fingers;
 if (tsdata->max_fingers > PIXCIR_MAX_SLOTS) {
  tsdata->max_fingers = PIXCIR_MAX_SLOTS;
  dev_info(dev, "Limiting maximum fingers to %d\n",
    tsdata->max_fingers);
 }

 error = input_mt_init_slots(input, tsdata->max_fingers,
        INPUT_MT_DIRECT | INPUT_MT_DROP_UNUSED);
 if (error) {
  dev_err(dev, "Error initializing Multi-Touch slots\n");
  return error;
 }

 input_set_drvdata(input, tsdata);

 tsdata->gpio_attb = devm_gpiod_get(dev, "attb", GPIOD_IN);
 if (IS_ERR(tsdata->gpio_attb)) {
  error = PTR_ERR(tsdata->gpio_attb);
  dev_err(dev, "Failed to request ATTB gpio: %d\n", error);
  return error;
 }

 tsdata->gpio_reset = devm_gpiod_get_optional(dev, "reset",
           GPIOD_OUT_LOW);
 if (IS_ERR(tsdata->gpio_reset)) {
  error = PTR_ERR(tsdata->gpio_reset);
  dev_err(dev, "Failed to request RESET gpio: %d\n", error);
  return error;
 }

 tsdata->gpio_wake = devm_gpiod_get_optional(dev, "wake",
          GPIOD_OUT_HIGH);
 if (IS_ERR(tsdata->gpio_wake)) {
  error = PTR_ERR(tsdata->gpio_wake);
  if (error != -EPROBE_DEFER)
   dev_err(dev, "Failed to get wake gpio: %d\n", error);
  return error;
 }

 tsdata->gpio_enable = devm_gpiod_get_optional(dev, "enable",
            GPIOD_OUT_HIGH);
 if (IS_ERR(tsdata->gpio_enable)) {
  error = PTR_ERR(tsdata->gpio_enable);
  if (error != -EPROBE_DEFER)
   dev_err(dev, "Failed to get enable gpio: %d\n", error);
  return error;
 }

 if (tsdata->gpio_enable)
  msleep(100);

 error = devm_request_threaded_irq(dev, client->irq, ((void*)0), pixcir_ts_isr,
       IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
       client->name, tsdata);
 if (error) {
  dev_err(dev, "failed to request irq %d\n", client->irq);
  return error;
 }

 pixcir_reset(tsdata);


 error = pixcir_set_power_mode(tsdata, PIXCIR_POWER_IDLE);
 if (error) {
  dev_err(dev, "Failed to set IDLE mode\n");
  return error;
 }


 error = pixcir_stop(tsdata);
 if (error)
  return error;

 error = input_register_device(input);
 if (error)
  return error;

 i2c_set_clientdata(client, tsdata);

 return 0;
}

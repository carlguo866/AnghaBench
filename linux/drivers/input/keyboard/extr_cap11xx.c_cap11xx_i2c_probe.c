
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct i2c_device_id {size_t driver_data; } ;
struct device {struct device_node* of_node; } ;
struct i2c_client {struct device dev; } ;
struct device_node {int dummy; } ;
struct cap11xx_priv {TYPE_2__* idev; scalar_t__* keycodes; int regmap; } ;
struct cap11xx_hw_model {int num_channels; unsigned int product_id; int num_leds; } ;
struct TYPE_5__ {unsigned int vendor; unsigned int product; unsigned int version; int bustype; } ;
struct TYPE_6__ {char* name; int keycodesize; int keycodemax; int close; int open; TYPE_1__ id; scalar_t__* keycode; int * keybit; int * evbit; } ;


 size_t ARRAY_SIZE (struct cap11xx_hw_model*) ;
 int BIT_MASK (int ) ;
 int BUS_I2C ;
 unsigned int CAP11XX_MANUFACTURER_ID ;
 int CAP11XX_REG_CONFIG2 ;
 int CAP11XX_REG_CONFIG2_ALT_POL ;
 int CAP11XX_REG_MAIN_CONTROL ;
 int CAP11XX_REG_MAIN_CONTROL_GAIN_MASK ;
 int CAP11XX_REG_MAIN_CONTROL_GAIN_SHIFT ;
 int CAP11XX_REG_MANUFACTURER_ID ;
 int CAP11XX_REG_PRODUCT_ID ;
 int CAP11XX_REG_REPEAT_RATE ;
 int CAP11XX_REG_REVISION ;
 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int EV_KEY ;
 scalar_t__ EV_REP ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 scalar_t__ KEY_A ;
 int KEY_RESERVED ;
 int PTR_ERR (int ) ;
 int __clear_bit (int ,int *) ;
 int __set_bit (scalar_t__,int *) ;
 struct cap11xx_hw_model* cap11xx_devices ;
 int cap11xx_init_leds (struct device*,struct cap11xx_priv*,int ) ;
 int cap11xx_input_close ;
 int cap11xx_input_open ;
 int cap11xx_regmap_config ;
 int cap11xx_set_sleep (struct cap11xx_priv*,int) ;
 int cap11xx_thread_func ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,unsigned int) ;
 int dev_name (struct device*) ;
 TYPE_2__* devm_input_allocate_device (struct device*) ;
 struct cap11xx_priv* devm_kzalloc (struct device*,int ,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_request_threaded_irq (struct device*,int,int *,int ,int ,int ,struct cap11xx_priv*) ;
 int ilog2 (int) ;
 int input_register_device (TYPE_2__*) ;
 int input_set_drvdata (TYPE_2__*,struct cap11xx_priv*) ;
 int irq_of_parse_and_map (struct device_node*,int ) ;
 scalar_t__ is_power_of_2 (int) ;
 int keycodes ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int of_property_read_u32_array (struct device_node*,char*,scalar_t__*,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int regmap_write (int ,int ,int ) ;
 int struct_size (struct cap11xx_priv*,int ,int) ;

__attribute__((used)) static int cap11xx_i2c_probe(struct i2c_client *i2c_client,
        const struct i2c_device_id *id)
{
 struct device *dev = &i2c_client->dev;
 struct cap11xx_priv *priv;
 struct device_node *node;
 const struct cap11xx_hw_model *cap;
 int i, error, irq, gain = 0;
 unsigned int val, rev;
 u32 gain32;

 if (id->driver_data >= ARRAY_SIZE(cap11xx_devices)) {
  dev_err(dev, "Invalid device ID %lu\n", id->driver_data);
  return -EINVAL;
 }

 cap = &cap11xx_devices[id->driver_data];
 if (!cap || !cap->num_channels) {
  dev_err(dev, "Invalid device configuration\n");
  return -EINVAL;
 }

 priv = devm_kzalloc(dev,
       struct_size(priv, keycodes, cap->num_channels),
       GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->regmap = devm_regmap_init_i2c(i2c_client, &cap11xx_regmap_config);
 if (IS_ERR(priv->regmap))
  return PTR_ERR(priv->regmap);

 error = regmap_read(priv->regmap, CAP11XX_REG_PRODUCT_ID, &val);
 if (error)
  return error;

 if (val != cap->product_id) {
  dev_err(dev, "Product ID: Got 0x%02x, expected 0x%02x\n",
   val, cap->product_id);
  return -ENXIO;
 }

 error = regmap_read(priv->regmap, CAP11XX_REG_MANUFACTURER_ID, &val);
 if (error)
  return error;

 if (val != CAP11XX_MANUFACTURER_ID) {
  dev_err(dev, "Manufacturer ID: Got 0x%02x, expected 0x%02x\n",
   val, CAP11XX_MANUFACTURER_ID);
  return -ENXIO;
 }

 error = regmap_read(priv->regmap, CAP11XX_REG_REVISION, &rev);
 if (error < 0)
  return error;

 dev_info(dev, "CAP11XX detected, revision 0x%02x\n", rev);
 node = dev->of_node;

 if (!of_property_read_u32(node, "microchip,sensor-gain", &gain32)) {
  if (is_power_of_2(gain32) && gain32 <= 8)
   gain = ilog2(gain32);
  else
   dev_err(dev, "Invalid sensor-gain value %d\n", gain32);
 }

 if (of_property_read_bool(node, "microchip,irq-active-high")) {
  error = regmap_update_bits(priv->regmap, CAP11XX_REG_CONFIG2,
        CAP11XX_REG_CONFIG2_ALT_POL, 0);
  if (error)
   return error;
 }


 for (i = 0; i < cap->num_channels; i++)
  priv->keycodes[i] = KEY_A + i;

 of_property_read_u32_array(node, "linux,keycodes",
       priv->keycodes, cap->num_channels);

 error = regmap_update_bits(priv->regmap, CAP11XX_REG_MAIN_CONTROL,
       CAP11XX_REG_MAIN_CONTROL_GAIN_MASK,
       gain << CAP11XX_REG_MAIN_CONTROL_GAIN_SHIFT);
 if (error)
  return error;


 error = regmap_write(priv->regmap, CAP11XX_REG_REPEAT_RATE, 0);
 if (error)
  return error;

 priv->idev = devm_input_allocate_device(dev);
 if (!priv->idev)
  return -ENOMEM;

 priv->idev->name = "CAP11XX capacitive touch sensor";
 priv->idev->id.bustype = BUS_I2C;
 priv->idev->evbit[0] = BIT_MASK(EV_KEY);

 if (of_property_read_bool(node, "autorepeat"))
  __set_bit(EV_REP, priv->idev->evbit);

 for (i = 0; i < cap->num_channels; i++)
  __set_bit(priv->keycodes[i], priv->idev->keybit);

 __clear_bit(KEY_RESERVED, priv->idev->keybit);

 priv->idev->keycode = priv->keycodes;
 priv->idev->keycodesize = sizeof(priv->keycodes[0]);
 priv->idev->keycodemax = cap->num_channels;

 priv->idev->id.vendor = CAP11XX_MANUFACTURER_ID;
 priv->idev->id.product = cap->product_id;
 priv->idev->id.version = rev;

 priv->idev->open = cap11xx_input_open;
 priv->idev->close = cap11xx_input_close;

 error = cap11xx_init_leds(dev, priv, cap->num_leds);
 if (error)
  return error;

 input_set_drvdata(priv->idev, priv);





 cap11xx_set_sleep(priv, 1);

 error = input_register_device(priv->idev);
 if (error)
  return error;

 irq = irq_of_parse_and_map(node, 0);
 if (!irq) {
  dev_err(dev, "Unable to parse or map IRQ\n");
  return -ENXIO;
 }

 error = devm_request_threaded_irq(dev, irq, ((void*)0), cap11xx_thread_func,
       IRQF_ONESHOT, dev_name(dev), priv);
 if (error)
  return error;

 return 0;
}

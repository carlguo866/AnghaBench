
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct mcp3021_data {int vdd; int hwmon_dev; int output_res; int sar_mask; int sar_shift; } ;
struct i2c_device_id {int driver_data; } ;
struct TYPE_5__ {int kobj; struct device_node* of_node; } ;
struct i2c_client {TYPE_1__ dev; int adapter; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {int attr; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_I2C ;
 scalar_t__ IS_ERR (int ) ;
 int MCP3021_OUTPUT_RES ;
 int MCP3021_SAR_MASK ;
 int MCP3021_SAR_SHIFT ;
 void* MCP3021_VDD_REF_DEFAULT ;
 int MCP3021_VDD_REF_MAX ;
 int MCP3021_VDD_REF_MIN ;
 int MCP3221_OUTPUT_RES ;
 int MCP3221_SAR_MASK ;
 int MCP3221_SAR_SHIFT ;
 int PTR_ERR (int ) ;
 TYPE_4__ dev_attr_in0_input ;
 int* dev_get_platdata (TYPE_1__*) ;
 struct mcp3021_data* devm_kzalloc (TYPE_1__*,int,int ) ;
 int hwmon_device_register (TYPE_1__*) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct mcp3021_data*) ;


 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int sysfs_create_file (int *,int *) ;
 int sysfs_remove_file (int *,int *) ;

__attribute__((used)) static int mcp3021_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 int err;
 struct mcp3021_data *data = ((void*)0);
 struct device_node *np = client->dev.of_node;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C))
  return -ENODEV;

 data = devm_kzalloc(&client->dev, sizeof(struct mcp3021_data),
       GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 i2c_set_clientdata(client, data);

 if (np) {
  if (!of_property_read_u32(np, "reference-voltage-microvolt",
       &data->vdd))
   data->vdd /= 1000;
  else
   data->vdd = MCP3021_VDD_REF_DEFAULT;
 } else {
  u32 *pdata = dev_get_platdata(&client->dev);

  if (pdata)
   data->vdd = *pdata;
  else
   data->vdd = MCP3021_VDD_REF_DEFAULT;
 }

 switch (id->driver_data) {
 case 129:
  data->sar_shift = MCP3021_SAR_SHIFT;
  data->sar_mask = MCP3021_SAR_MASK;
  data->output_res = MCP3021_OUTPUT_RES;
  break;

 case 128:
  data->sar_shift = MCP3221_SAR_SHIFT;
  data->sar_mask = MCP3221_SAR_MASK;
  data->output_res = MCP3221_OUTPUT_RES;
  break;
 }

 if (data->vdd > MCP3021_VDD_REF_MAX || data->vdd < MCP3021_VDD_REF_MIN)
  return -EINVAL;

 err = sysfs_create_file(&client->dev.kobj, &dev_attr_in0_input.attr);
 if (err)
  return err;

 data->hwmon_dev = hwmon_device_register(&client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto exit_remove;
 }

 return 0;

exit_remove:
 sysfs_remove_file(&client->dev.kobj, &dev_attr_in0_input.attr);
 return err;
}

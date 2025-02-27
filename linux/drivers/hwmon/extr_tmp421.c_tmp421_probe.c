
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__** info; int * ops; } ;
struct TYPE_3__ {int* config; int type; } ;
struct tmp421_data {unsigned long channels; int* temp_config; TYPE_2__ chip; TYPE_1__ temp_info; TYPE_1__** info; struct i2c_client* client; int update_lock; } ;
struct i2c_device_id {unsigned long driver_data; } ;
struct device {scalar_t__ of_node; } ;
struct i2c_client {int name; struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HWMON_T_FAULT ;
 int HWMON_T_INPUT ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 struct device* devm_hwmon_device_register_with_info (struct device*,int ,struct tmp421_data*,TYPE_2__*,int *) ;
 struct tmp421_data* devm_kzalloc (struct device*,int,int ) ;
 int hwmon_temp ;
 int mutex_init (int *) ;
 scalar_t__ of_device_get_match_data (struct device*) ;
 int tmp421_init_client (struct i2c_client*) ;
 int tmp421_ops ;

__attribute__((used)) static int tmp421_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct device *hwmon_dev;
 struct tmp421_data *data;
 int i, err;

 data = devm_kzalloc(dev, sizeof(struct tmp421_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 mutex_init(&data->update_lock);
 if (client->dev.of_node)
  data->channels = (unsigned long)
   of_device_get_match_data(&client->dev);
 else
  data->channels = id->driver_data;
 data->client = client;

 err = tmp421_init_client(client);
 if (err)
  return err;

 for (i = 0; i < data->channels; i++)
  data->temp_config[i] = HWMON_T_INPUT | HWMON_T_FAULT;

 data->chip.ops = &tmp421_ops;
 data->chip.info = data->info;

 data->info[0] = &data->temp_info;

 data->temp_info.type = hwmon_temp;
 data->temp_info.config = data->temp_config;

 hwmon_dev = devm_hwmon_device_register_with_info(dev, client->name,
        data,
        &data->chip,
        ((void*)0));
 return PTR_ERR_OR_ZERO(hwmon_dev);
}

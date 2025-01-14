
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {scalar_t__ driver_data; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;
struct adm1021_data {scalar_t__ type; int ** groups; int update_lock; struct i2c_client* client; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int adm1021_group ;
 int adm1021_init_client (struct i2c_client*) ;
 int adm1021_min_group ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct adm1021_data*,int **) ;
 struct adm1021_data* devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ lm84 ;
 int mutex_init (int *) ;
 int read_only ;

__attribute__((used)) static int adm1021_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct adm1021_data *data;
 struct device *hwmon_dev;

 data = devm_kzalloc(dev, sizeof(struct adm1021_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 data->type = id->driver_data;
 mutex_init(&data->update_lock);


 if (data->type != lm84 && !read_only)
  adm1021_init_client(client);

 data->groups[0] = &adm1021_group;
 if (data->type != lm84)
  data->groups[1] = &adm1021_min_group;

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          data, data->groups);

 return PTR_ERR_OR_ZERO(hwmon_dev);
}

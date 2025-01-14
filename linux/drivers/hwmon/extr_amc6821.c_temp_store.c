
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct amc6821_data {long* temp; int update_lock; struct i2c_client* client; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 size_t EIO ;
 long clamp_val (long,int,int) ;
 int dev_err (int *,char*) ;
 struct amc6821_data* dev_get_drvdata (struct device*) ;
 scalar_t__ i2c_smbus_write_byte_data (struct i2c_client*,int ,long) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * temp_reg ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_store(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct amc6821_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int ix = to_sensor_dev_attr(attr)->index;
 long val;

 int ret = kstrtol(buf, 10, &val);
 if (ret)
  return ret;
 val = clamp_val(val / 1000, -128, 127);

 mutex_lock(&data->update_lock);
 data->temp[ix] = val;
 if (i2c_smbus_write_byte_data(client, temp_reg[ix], data->temp[ix])) {
  dev_err(&client->dev, "Register write error, aborting.\n");
  count = -EIO;
 }
 mutex_unlock(&data->update_lock);
 return count;
}

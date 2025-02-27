
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7462_data {long* temp_max; int lock; struct i2c_client* client; } ;
typedef size_t ssize_t ;


 int ADT7462_TEMP_MAX_REG (size_t) ;
 int DIV_ROUND_CLOSEST (long,int) ;
 size_t EINVAL ;
 long clamp_val (long,int,int) ;
 struct adt7462_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,long) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int temp_enabled (struct adt7462_data*,size_t) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_max_store(struct device *dev,
         struct device_attribute *devattr,
         const char *buf, size_t count)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct adt7462_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 long temp;

 if (kstrtol(buf, 10, &temp) || !temp_enabled(data, attr->index))
  return -EINVAL;

 temp = clamp_val(temp, -64000, 191000);
 temp = DIV_ROUND_CLOSEST(temp, 1000) + 64;

 mutex_lock(&data->lock);
 data->temp_max[attr->index] = temp;
 i2c_smbus_write_byte_data(client, ADT7462_TEMP_MAX_REG(attr->index),
      temp);
 mutex_unlock(&data->lock);

 return count;
}

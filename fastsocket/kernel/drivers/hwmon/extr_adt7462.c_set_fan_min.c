
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7462_data {long* fan_min; int lock; } ;
typedef size_t ssize_t ;


 int ADT7462_REG_FAN_MIN (size_t) ;
 size_t EINVAL ;
 long FAN_RPM_TO_PERIOD (long) ;
 long SENSORS_LIMIT (long,int,int) ;
 int fan_enabled (struct adt7462_data*,size_t) ;
 struct adt7462_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ strict_strtol (char const*,int,long*) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_fan_min(struct device *dev,
      struct device_attribute *devattr,
      const char *buf, size_t count)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct i2c_client *client = to_i2c_client(dev);
 struct adt7462_data *data = i2c_get_clientdata(client);
 long temp;

 if (strict_strtol(buf, 10, &temp) || !temp ||
     !fan_enabled(data, attr->index))
  return -EINVAL;

 temp = FAN_RPM_TO_PERIOD(temp);
 temp >>= 8;
 temp = SENSORS_LIMIT(temp, 1, 255);

 mutex_lock(&data->lock);
 data->fan_min[attr->index] = temp;
 i2c_smbus_write_byte_data(client, ADT7462_REG_FAN_MIN(attr->index),
      temp);
 mutex_unlock(&data->lock);

 return count;
}

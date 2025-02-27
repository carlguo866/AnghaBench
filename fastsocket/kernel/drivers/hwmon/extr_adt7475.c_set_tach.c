
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {size_t index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int lock; int ** tach; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t MIN ;
 int TACH_MIN_REG (size_t) ;
 int adt7475_write_word (struct i2c_client*,int ,int ) ;
 struct adt7475_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rpm2tach (unsigned long) ;
 scalar_t__ strict_strtoul (char const*,int,unsigned long*) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_tach(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t count)
{

 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 struct i2c_client *client = to_i2c_client(dev);
 struct adt7475_data *data = i2c_get_clientdata(client);
 unsigned long val;

 if (strict_strtoul(buf, 10, &val))
  return -EINVAL;

 mutex_lock(&data->lock);

 data->tach[MIN][sattr->index] = rpm2tach(val);

 adt7475_write_word(client, TACH_MIN_REG(sattr->index),
      data->tach[MIN][sattr->index]);

 mutex_unlock(&data->lock);
 return count;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83792d_data {int* pwm; int update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int SENSORS_LIMIT (int ,int ,int) ;
 int * W83792D_REG_PWM ;
 struct w83792d_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 int w83792d_read_value (struct i2c_client*,int ) ;
 int w83792d_write_value (struct i2c_client*,int ,int) ;

__attribute__((used)) static ssize_t
store_pwm(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 int nr = sensor_attr->index;
 struct i2c_client *client = to_i2c_client(dev);
 struct w83792d_data *data = i2c_get_clientdata(client);
 u8 val = SENSORS_LIMIT(simple_strtoul(buf, ((void*)0), 10), 0, 255) >> 4;

 mutex_lock(&data->update_lock);
 val |= w83792d_read_value(client, W83792D_REG_PWM[nr]) & 0xf0;
 data->pwm[nr] = val;
 w83792d_write_value(client, W83792D_REG_PWM[nr], data->pwm[nr]);
 mutex_unlock(&data->update_lock);

 return count;
}

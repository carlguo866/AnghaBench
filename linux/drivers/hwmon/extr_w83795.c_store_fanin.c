
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83795_data {unsigned long* target_speed; unsigned long tol_speed; int update_lock; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;


 int W83795_REG_FTSH (int) ;
 int W83795_REG_FTSL (int) ;
 int W83795_REG_TFTS ;
 unsigned long clamp_val (unsigned long,int ,int) ;
 unsigned long fan_to_reg (unsigned long) ;
 struct w83795_data* i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 int w83795_write (struct i2c_client*,int ,unsigned long) ;

__attribute__((used)) static ssize_t
store_fanin(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct w83795_data *data = i2c_get_clientdata(client);
 struct sensor_device_attribute_2 *sensor_attr =
     to_sensor_dev_attr_2(attr);
 int nr = sensor_attr->nr;
 int index = sensor_attr->index;
 unsigned long val;

 if (kstrtoul(buf, 10, &val) < 0)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 switch (nr) {
 case 129:
  val = fan_to_reg(clamp_val(val, 0, 0xfff));
  w83795_write(client, W83795_REG_FTSH(index), val >> 4);
  w83795_write(client, W83795_REG_FTSL(index), (val << 4) & 0xf0);
  data->target_speed[index] = val;
  break;
 case 128:
  val = clamp_val(val, 0, 0x3f);
  w83795_write(client, W83795_REG_TFTS, val);
  data->tol_speed = val;
  break;
 }
 mutex_unlock(&data->update_lock);

 return count;
}

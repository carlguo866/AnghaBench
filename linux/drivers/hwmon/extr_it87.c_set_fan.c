
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct it87_data {int** fan; int* fan_div; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int DIV_FROM_REG (int) ;
 size_t EINVAL ;
 int FAN16_TO_REG (long) ;
 int FAN_TO_REG (long,int ) ;
 int * IT87_REG_FANX_MIN ;
 int IT87_REG_FAN_DIV ;
 int * IT87_REG_FAN_MIN ;
 struct it87_data* dev_get_drvdata (struct device*) ;
 scalar_t__ has_16bit_fans (struct it87_data*) ;
 int it87_read_value (struct it87_data*,int ) ;
 int it87_write_value (struct it87_data*,int ,int) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_fan(struct device *dev, struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 int nr = sattr->nr;
 int index = sattr->index;

 struct it87_data *data = dev_get_drvdata(dev);
 long val;
 u8 reg;

 if (kstrtol(buf, 10, &val) < 0)
  return -EINVAL;

 mutex_lock(&data->update_lock);

 if (has_16bit_fans(data)) {
  data->fan[nr][index] = FAN16_TO_REG(val);
  it87_write_value(data, IT87_REG_FAN_MIN[nr],
     data->fan[nr][index] & 0xff);
  it87_write_value(data, IT87_REG_FANX_MIN[nr],
     data->fan[nr][index] >> 8);
 } else {
  reg = it87_read_value(data, IT87_REG_FAN_DIV);
  switch (nr) {
  case 0:
   data->fan_div[nr] = reg & 0x07;
   break;
  case 1:
   data->fan_div[nr] = (reg >> 3) & 0x07;
   break;
  case 2:
   data->fan_div[nr] = (reg & 0x40) ? 3 : 1;
   break;
  }
  data->fan[nr][index] =
    FAN_TO_REG(val, DIV_FROM_REG(data->fan_div[nr]));
  it87_write_value(data, IT87_REG_FAN_MIN[nr],
     data->fan[nr][index]);
 }

 mutex_unlock(&data->update_lock);
 return count;
}

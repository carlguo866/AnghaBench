
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {size_t index; } ;
struct nct6775_data {int* BEEP_BITS; unsigned long long beeps; int update_lock; int * REG_BEEP; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct nct6775_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nct6775_write_value (struct nct6775_data*,int ,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t
store_beep(struct device *dev, struct device_attribute *attr, const char *buf,
    size_t count)
{
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 struct nct6775_data *data = dev_get_drvdata(dev);
 int nr = data->BEEP_BITS[sattr->index];
 int regindex = nr >> 3;
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err < 0)
  return err;
 if (val > 1)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 if (val)
  data->beeps |= (1ULL << nr);
 else
  data->beeps &= ~(1ULL << nr);
 nct6775_write_value(data, data->REG_BEEP[regindex],
       (data->beeps >> (regindex << 3)) & 0xff);
 mutex_unlock(&data->update_lock);
 return count;
}

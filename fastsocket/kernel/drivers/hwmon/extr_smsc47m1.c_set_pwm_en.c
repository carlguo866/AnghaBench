
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc47m1_data {int* pwm; int update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int * SMSC47M1_REG_PWM ;
 struct smsc47m1_data* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long simple_strtol (char const*,int *,int) ;
 int smsc47m1_write_value (struct smsc47m1_data*,int ,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_pwm_en(struct device *dev, struct device_attribute
     *devattr, const char *buf, size_t count)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct smsc47m1_data *data = dev_get_drvdata(dev);
 int nr = attr->index;
 long val = simple_strtol(buf, ((void*)0), 10);

 if (val != 0 && val != 1)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 data->pwm[nr] &= 0xFE;
 data->pwm[nr] |= !val;
 smsc47m1_write_value(data, SMSC47M1_REG_PWM[nr],
        data->pwm[nr]);
 mutex_unlock(&data->update_lock);

 return count;
}

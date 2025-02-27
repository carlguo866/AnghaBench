
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sensor_device_attribute {int index; } ;
struct f71805f_data {int* fan_ctrl; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int kobj; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int F71805F_REG_FAN_CTRL (int) ;
 int FAN_CTRL_MODE_MANUAL ;
 int FAN_CTRL_MODE_MASK ;
 int FAN_CTRL_MODE_SPEED ;
 int FAN_CTRL_MODE_TEMPERATURE ;
 int S_IRUGO ;
 int S_IWUSR ;
 int dev_dbg (struct device*,char*,int) ;
 struct f71805f_data* dev_get_drvdata (struct device*) ;
 int * f71805f_attr_pwm ;
 int f71805f_read8 (struct f71805f_data*,int ) ;
 int f71805f_write8 (struct f71805f_data*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long simple_strtoul (char const*,int *,int) ;
 scalar_t__ sysfs_chmod_file (int *,int ,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_pwm_enable(struct device *dev, struct device_attribute
         *devattr, const char *buf, size_t count)
{
 struct f71805f_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 int nr = attr->index;
 unsigned long val = simple_strtoul(buf, ((void*)0), 10);
 u8 reg;

 if (val < 1 || val > 3)
  return -EINVAL;

 if (val > 1) {
  if (sysfs_chmod_file(&dev->kobj, f71805f_attr_pwm[nr],
         S_IRUGO))
   dev_dbg(dev, "chmod -w pwm%d failed\n", nr + 1);
 }

 mutex_lock(&data->update_lock);
 reg = f71805f_read8(data, F71805F_REG_FAN_CTRL(nr))
     & ~FAN_CTRL_MODE_MASK;
 switch (val) {
 case 1:
  reg |= FAN_CTRL_MODE_MANUAL;
  break;
 case 2:
  reg |= FAN_CTRL_MODE_TEMPERATURE;
  break;
 case 3:
  reg |= FAN_CTRL_MODE_SPEED;
  break;
 }
 data->fan_ctrl[nr] = reg;
 f71805f_write8(data, F71805F_REG_FAN_CTRL(nr), reg);
 mutex_unlock(&data->update_lock);

 if (val == 1) {
  if (sysfs_chmod_file(&dev->kobj, f71805f_attr_pwm[nr],
         S_IRUGO | S_IWUSR))
   dev_dbg(dev, "chmod +w pwm%d failed\n", nr + 1);
 }

 return count;
}

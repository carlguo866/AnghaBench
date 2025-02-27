
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct power_supply {int dummy; } ;
struct ds2780_device_info {int dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int dev_err (int ,char*) ;
 int ds2780_set_rsgain_register (struct ds2780_device_info*,int) ;
 int kstrtou16 (char const*,int ,int*) ;
 struct ds2780_device_info* to_ds2780_device_info (struct power_supply*) ;
 struct power_supply* to_power_supply (struct device*) ;

__attribute__((used)) static ssize_t ds2780_set_rsgain_setting(struct device *dev,
 struct device_attribute *attr,
 const char *buf,
 size_t count)
{
 int ret;
 u16 new_setting;
 struct power_supply *psy = to_power_supply(dev);
 struct ds2780_device_info *dev_info = to_ds2780_device_info(psy);

 ret = kstrtou16(buf, 0, &new_setting);
 if (ret < 0)
  return ret;


 if (new_setting > 1999) {
  dev_err(dev_info->dev, "Invalid rsgain setting (0 - 1999)\n");
  return -EINVAL;
 }

 ret = ds2780_set_rsgain_register(dev_info, new_setting);
 if (ret < 0)
  return ret;

 return count;
}

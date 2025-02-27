
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct power_supply {int dummy; } ;
struct ds2781_device_info {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DS2781_CONTROL_PMOD ;
 int ds2781_get_control_register (struct ds2781_device_info*,int*) ;
 int sprintf (char*,char*,int) ;
 struct ds2781_device_info* to_ds2781_device_info (struct power_supply*) ;
 struct power_supply* to_power_supply (struct device*) ;

__attribute__((used)) static ssize_t ds2781_get_pmod_enabled(struct device *dev,
 struct device_attribute *attr,
 char *buf)
{
 int ret;
 u8 control_reg;
 struct power_supply *psy = to_power_supply(dev);
 struct ds2781_device_info *dev_info = to_ds2781_device_info(psy);


 ret = ds2781_get_control_register(dev_info, &control_reg);
 if (ret < 0)
  return ret;

 return sprintf(buf, "%d\n",
   !!(control_reg & DS2781_CONTROL_PMOD));
}

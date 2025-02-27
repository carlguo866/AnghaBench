
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct regmap {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 long clamp_val (long,int,int) ;
 struct regmap* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int regmap_write (struct regmap*,int ,int ) ;
 int tmp103_mc_to_reg (long) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t tmp103_temp_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct sensor_device_attribute *sda = to_sensor_dev_attr(attr);
 struct regmap *regmap = dev_get_drvdata(dev);
 long val;
 int ret;

 if (kstrtol(buf, 10, &val) < 0)
  return -EINVAL;

 val = clamp_val(val, -55000, 127000);
 ret = regmap_write(regmap, sda->index, tmp103_mc_to_reg(val));
 return ret ? ret : count;
}

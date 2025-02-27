
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lis3lv02d {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct lis3lv02d* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 scalar_t__ lis3lv02d_set_odr (struct lis3lv02d*,unsigned long) ;
 int lis3lv02d_sysfs_poweron (struct lis3lv02d*) ;

__attribute__((used)) static ssize_t lis3lv02d_rate_set(struct device *dev,
    struct device_attribute *attr, const char *buf,
    size_t count)
{
 struct lis3lv02d *lis3 = dev_get_drvdata(dev);
 unsigned long rate;
 int ret;

 ret = kstrtoul(buf, 0, &rate);
 if (ret)
  return ret;

 lis3lv02d_sysfs_poweron(lis3);
 if (lis3lv02d_set_odr(lis3, rate))
  return -EINVAL;

 return count;
}

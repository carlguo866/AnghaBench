
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct device_attribute {scalar_t__ (* show ) (struct device*,struct device_attribute*,char*) ;} ;
struct device {int dummy; } ;
struct attribute {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EIO ;
 scalar_t__ PAGE_SIZE ;
 struct device* kobj_to_dev (struct kobject*) ;
 int printk (char*,scalar_t__ (*) (struct device*,struct device_attribute*,char*)) ;
 scalar_t__ stub1 (struct device*,struct device_attribute*,char*) ;
 struct device_attribute* to_dev_attr (struct attribute*) ;

__attribute__((used)) static ssize_t dev_attr_show(struct kobject *kobj, struct attribute *attr,
        char *buf)
{
 struct device_attribute *dev_attr = to_dev_attr(attr);
 struct device *dev = kobj_to_dev(kobj);
 ssize_t ret = -EIO;

 if (dev_attr->show)
  ret = dev_attr->show(dev, dev_attr, buf);
 if (ret >= (ssize_t)PAGE_SIZE) {
  printk("dev_attr_show: %pS returned bad count\n",
    dev_attr->show);
 }
 return ret;
}

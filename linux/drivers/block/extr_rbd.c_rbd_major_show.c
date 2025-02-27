
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_device {int major; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct rbd_device* dev_to_rbd_dev (struct device*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t rbd_major_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct rbd_device *rbd_dev = dev_to_rbd_dev(dev);

 if (rbd_dev->major)
  return sprintf(buf, "%d\n", rbd_dev->major);

 return sprintf(buf, "(none)\n");
}

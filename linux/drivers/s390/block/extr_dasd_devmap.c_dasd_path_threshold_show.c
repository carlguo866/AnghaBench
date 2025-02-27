
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dasd_device {int path_thrhld; } ;
typedef int ssize_t ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct dasd_device*) ;
 int PAGE_SIZE ;
 struct dasd_device* dasd_device_from_cdev (int ) ;
 int dasd_put_device (struct dasd_device*) ;
 int snprintf (char*,int ,char*,int ) ;
 int to_ccwdev (struct device*) ;

__attribute__((used)) static ssize_t
dasd_path_threshold_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct dasd_device *device;
 int len;

 device = dasd_device_from_cdev(to_ccwdev(dev));
 if (IS_ERR(device))
  return -ENODEV;
 len = snprintf(buf, PAGE_SIZE, "%lu\n", device->path_thrhld);
 dasd_put_device(device);
 return len;
}

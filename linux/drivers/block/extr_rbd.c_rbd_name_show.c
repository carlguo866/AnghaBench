
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rbd_device {TYPE_1__* spec; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* image_name; } ;


 struct rbd_device* dev_to_rbd_dev (struct device*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t rbd_name_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct rbd_device *rbd_dev = dev_to_rbd_dev(dev);

 if (rbd_dev->spec->image_name)
  return sprintf(buf, "%s\n", rbd_dev->spec->image_name);

 return sprintf(buf, "(unknown)\n");
}

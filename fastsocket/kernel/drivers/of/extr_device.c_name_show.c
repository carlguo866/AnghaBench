
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct of_device {TYPE_1__* node; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 int sprintf (char*,char*,char*) ;
 struct of_device* to_of_device (struct device*) ;

__attribute__((used)) static ssize_t name_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct of_device *ofdev;

 ofdev = to_of_device(dev);
 return sprintf(buf, "%s\n", ofdev->node->name);
}

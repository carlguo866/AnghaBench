
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int state; } ;


 int sprintf (char*,char*,char*) ;
 TYPE_1__* to_xenbus_device (struct device*) ;
 char* xenbus_strstate (int ) ;

__attribute__((used)) static ssize_t state_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 return sprintf(buf, "%s\n",
   xenbus_strstate(to_xenbus_device(dev)->state));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vt8231_data {int alarms; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;
 struct vt8231_data* vt8231_update_device (struct device*) ;

__attribute__((used)) static ssize_t alarm_show(struct device *dev, struct device_attribute *attr,
     char *buf)
{
 int bitnr = to_sensor_dev_attr(attr)->index;
 struct vt8231_data *data = vt8231_update_device(dev);
 return sprintf(buf, "%u\n", (data->alarms >> bitnr) & 1);
}

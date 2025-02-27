
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83792d_data {scalar_t__* tolerance; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,long) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 struct w83792d_data* w83792d_update_device (struct device*) ;

__attribute__((used)) static ssize_t
show_tolerance(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 int nr = sensor_attr->index;
 struct w83792d_data *data = w83792d_update_device(dev);
 return sprintf(buf, "%ld\n", (long)data->tolerance[nr-1]);
}

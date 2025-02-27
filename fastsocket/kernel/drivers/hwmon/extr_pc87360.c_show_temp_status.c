
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct pc87360_data {int* temp_status; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct pc87360_data* pc87360_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_temp_status(struct device *dev, struct device_attribute *devattr, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct pc87360_data *data = pc87360_update_device(dev);
 return sprintf(buf, "%d\n", data->temp_status[attr->index]);
}

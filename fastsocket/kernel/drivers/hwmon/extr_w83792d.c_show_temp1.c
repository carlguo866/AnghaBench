
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83792d_data {int * temp1; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int TEMP1_FROM_REG (int ) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 struct w83792d_data* w83792d_update_device (struct device*) ;

__attribute__((used)) static ssize_t show_temp1(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 int nr = sensor_attr->index;
 struct w83792d_data *data = w83792d_update_device(dev);
 return sprintf(buf, "%d\n", TEMP1_FROM_REG(data->temp1[nr]));
}

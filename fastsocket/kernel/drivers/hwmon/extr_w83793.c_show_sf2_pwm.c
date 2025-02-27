
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83793_data {int** sf2_pwm; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 struct w83793_data* w83793_update_device (struct device*) ;

__attribute__((used)) static ssize_t
show_sf2_pwm(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct sensor_device_attribute_2 *sensor_attr =
     to_sensor_dev_attr_2(attr);
 int nr = sensor_attr->nr;
 int index = sensor_attr->index;
 struct w83793_data *data = w83793_update_device(dev);

 return sprintf(buf, "%d\n", (data->sf2_pwm[index][nr] & 0x3f) << 2);
}

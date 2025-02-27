
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1026_data {int * fan_div; int * fan_min; } ;
typedef int ssize_t ;


 int FAN_FROM_REG (int ,int ) ;
 struct adm1026_data* adm1026_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t fan_min_show(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 int nr = sensor_attr->index;
 struct adm1026_data *data = adm1026_update_device(dev);
 return sprintf(buf, "%d\n", FAN_FROM_REG(data->fan_min[nr],
  data->fan_div[nr]));
}

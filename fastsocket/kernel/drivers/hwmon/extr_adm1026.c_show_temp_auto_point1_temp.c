
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1026_data {int * temp_tmin; } ;
typedef int ssize_t ;


 int TEMP_FROM_REG (int ) ;
 struct adm1026_data* adm1026_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_temp_auto_point1_temp(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 int nr = sensor_attr->index;
 struct adm1026_data *data = adm1026_update_device(dev);
 return sprintf(buf, "%d\n", TEMP_FROM_REG(data->temp_tmin[nr]));
}

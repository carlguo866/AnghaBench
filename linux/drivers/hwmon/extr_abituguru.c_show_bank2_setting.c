
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {size_t index; size_t nr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct abituguru_data {int** bank2_settings; } ;
typedef int ssize_t ;


 int ABIT_UGURU_FAN_MAX ;
 struct abituguru_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_bank2_setting(struct device *dev,
 struct device_attribute *devattr, char *buf)
{
 struct sensor_device_attribute_2 *attr = to_sensor_dev_attr_2(devattr);
 struct abituguru_data *data = dev_get_drvdata(dev);
 return sprintf(buf, "%d\n",
  (data->bank2_settings[attr->index][attr->nr] *
  ABIT_UGURU_FAN_MAX + 128) / 255);
}

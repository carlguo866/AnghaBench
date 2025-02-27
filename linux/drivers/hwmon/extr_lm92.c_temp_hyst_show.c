
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct lm92_data {int * temp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int TEMP_FROM_REG (int ) ;
 struct lm92_data* lm92_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 size_t t_hyst ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_hyst_show(struct device *dev,
         struct device_attribute *devattr, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct lm92_data *data = lm92_update_device(dev);

 return sprintf(buf, "%d\n", TEMP_FROM_REG(data->temp[attr->index])
         - TEMP_FROM_REG(data->temp[t_hyst]));
}

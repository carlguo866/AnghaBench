
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int* range; } ;
typedef int ssize_t ;


 struct adt7475_data* adt7475_update_device (struct device*) ;
 int* pwmfreq_table ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_pwmfreq(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct adt7475_data *data = adt7475_update_device(dev);
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);

 return sprintf(buf, "%d\n",
         pwmfreq_table[data->range[sattr->index] & 7]);
}

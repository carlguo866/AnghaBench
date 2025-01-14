
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt1211_data {int* pwm_ctl; int * pwm_auto_temp; } ;
struct sensor_device_attribute_2 {int index; int nr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int TEMP_FROM_REG (int,int ) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 struct vt1211_data* vt1211_update_device (struct device*) ;

__attribute__((used)) static ssize_t show_pwm_auto_point_temp(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct vt1211_data *data = vt1211_update_device(dev);
 struct sensor_device_attribute_2 *sensor_attr_2 =
      to_sensor_dev_attr_2(attr);
 int ix = sensor_attr_2->index;
 int ap = sensor_attr_2->nr;

 return sprintf(buf, "%d\n", TEMP_FROM_REG(data->pwm_ctl[ix] & 7,
         data->pwm_auto_temp[ap]));
}

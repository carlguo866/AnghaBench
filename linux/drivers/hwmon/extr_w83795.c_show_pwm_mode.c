
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct w83795_data {int pwm_fomc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int sprintf (char*,char*,unsigned int) ;
 TYPE_1__* to_sensor_dev_attr_2 (struct device_attribute*) ;
 struct w83795_data* w83795_update_pwm_config (struct device*) ;

__attribute__((used)) static ssize_t
show_pwm_mode(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct w83795_data *data = w83795_update_pwm_config(dev);
 int index = to_sensor_dev_attr_2(attr)->index;
 unsigned int mode;

 if (data->pwm_fomc & (1 << index))
  mode = 0;
 else
  mode = 1;

 return sprintf(buf, "%u\n", mode);
}

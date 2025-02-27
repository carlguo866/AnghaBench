
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm93_data {int ** block9; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 size_t LM93_PWM_CTL3 ;
 int LM93_SPINUP_TIME_FROM_REG (int ) ;
 struct lm93_data* lm93_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_pwm_auto_spinup_time(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 int nr = (to_sensor_dev_attr(attr))->index;
 struct lm93_data *data = lm93_update_device(dev);
 return sprintf(buf,"%d\n",LM93_SPINUP_TIME_FROM_REG(
    data->block9[nr][LM93_PWM_CTL3]));
}

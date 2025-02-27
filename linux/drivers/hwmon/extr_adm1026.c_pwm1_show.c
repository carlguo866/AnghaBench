
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int pwm; } ;
struct adm1026_data {TYPE_1__ pwm1; } ;
typedef int ssize_t ;


 int PWM_FROM_REG (int ) ;
 struct adm1026_data* adm1026_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t pwm1_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct adm1026_data *data = adm1026_update_device(dev);
 return sprintf(buf, "%d\n", PWM_FROM_REG(data->pwm1.pwm));
}

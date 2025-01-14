
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct w83793_data {int pwm_default; int temp_critical; int pwm_downtime; int pwm_uptime; } ;
struct sensor_device_attribute_2 {int nr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int SETUP_PWM_DEFAULT ;
 int SETUP_PWM_DOWNTIME ;
 int SETUP_PWM_UPTIME ;
 int SETUP_TEMP_CRITICAL ;
 int TEMP_FROM_REG (int) ;
 int TIME_FROM_REG (int ) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 struct w83793_data* w83793_update_device (struct device*) ;

__attribute__((used)) static ssize_t
show_sf_setup(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct sensor_device_attribute_2 *sensor_attr =
     to_sensor_dev_attr_2(attr);
 int nr = sensor_attr->nr;
 struct w83793_data *data = w83793_update_device(dev);
 u32 val = 0;

 if (SETUP_PWM_DEFAULT == nr) {
  val = (data->pwm_default & 0x3f) << 2;
 } else if (SETUP_PWM_UPTIME == nr) {
  val = TIME_FROM_REG(data->pwm_uptime);
 } else if (SETUP_PWM_DOWNTIME == nr) {
  val = TIME_FROM_REG(data->pwm_downtime);
 } else if (SETUP_TEMP_CRITICAL == nr) {
  val = TEMP_FROM_REG(data->temp_critical & 0x7f);
 }

 return sprintf(buf, "%d\n", val);
}

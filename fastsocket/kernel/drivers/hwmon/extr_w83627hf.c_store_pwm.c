
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct w83627hf_data {scalar_t__ type; int* pwm; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 int PWM_TO_REG (int ) ;
 int W836X7HF_REG_PWM (scalar_t__,int) ;
 struct w83627hf_data* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,int *,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;
 int w83627hf_read_value (struct w83627hf_data*,int ) ;
 int w83627hf_write_value (struct w83627hf_data*,int ,int) ;
 scalar_t__ w83627thf ;

__attribute__((used)) static ssize_t
store_pwm(struct device *dev, struct device_attribute *devattr,
   const char *buf, size_t count)
{
 int nr = to_sensor_dev_attr(devattr)->index;
 struct w83627hf_data *data = dev_get_drvdata(dev);
 u32 val = simple_strtoul(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);

 if (data->type == w83627thf) {

  data->pwm[nr] = PWM_TO_REG(val) & 0xf0;
  w83627hf_write_value(data,
         W836X7HF_REG_PWM(data->type, nr),
         data->pwm[nr] |
         (w83627hf_read_value(data,
         W836X7HF_REG_PWM(data->type, nr)) & 0x0f));
 } else {
  data->pwm[nr] = PWM_TO_REG(val);
  w83627hf_write_value(data,
         W836X7HF_REG_PWM(data->type, nr),
         data->pwm[nr]);
 }

 mutex_unlock(&data->update_lock);
 return count;
}

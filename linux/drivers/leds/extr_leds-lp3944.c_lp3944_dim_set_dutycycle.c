
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 scalar_t__ LP3944_DIM0 ;
 scalar_t__ LP3944_DIM1 ;
 scalar_t__ LP3944_DUTY_CYCLE_MAX ;
 scalar_t__ LP3944_REG_PWM0 ;
 scalar_t__ LP3944_REG_PWM1 ;
 int lp3944_reg_write (struct i2c_client*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int lp3944_dim_set_dutycycle(struct i2c_client *client, u8 dim,
        u8 duty_cycle)
{
 u8 pwm_reg;
 u8 pwm_value;
 int err;

 if (dim == LP3944_DIM0)
  pwm_reg = LP3944_REG_PWM0;
 else if (dim == LP3944_DIM1)
  pwm_reg = LP3944_REG_PWM1;
 else
  return -EINVAL;


 if (duty_cycle > LP3944_DUTY_CYCLE_MAX)
  return -EINVAL;

 pwm_value = (duty_cycle * 255) / LP3944_DUTY_CYCLE_MAX;

 err = lp3944_reg_write(client, pwm_reg, pwm_value);

 return err;
}

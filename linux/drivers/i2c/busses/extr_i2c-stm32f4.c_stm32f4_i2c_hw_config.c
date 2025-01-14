
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32f4_i2c_dev {scalar_t__ base; } ;


 scalar_t__ STM32F4_I2C_CR1 ;
 int STM32F4_I2C_CR1_PE ;
 int stm32f4_i2c_set_periph_clk_freq (struct stm32f4_i2c_dev*) ;
 int stm32f4_i2c_set_rise_time (struct stm32f4_i2c_dev*) ;
 int stm32f4_i2c_set_speed_mode (struct stm32f4_i2c_dev*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int stm32f4_i2c_hw_config(struct stm32f4_i2c_dev *i2c_dev)
{
 int ret;

 ret = stm32f4_i2c_set_periph_clk_freq(i2c_dev);
 if (ret)
  return ret;

 stm32f4_i2c_set_rise_time(i2c_dev);

 stm32f4_i2c_set_speed_mode(i2c_dev);


 writel_relaxed(STM32F4_I2C_CR1_PE, i2c_dev->base + STM32F4_I2C_CR1);

 return 0;
}

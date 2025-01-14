
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {struct au8522_led_config* led_cfg; } ;
struct au8522_state {TYPE_1__ config; } ;
struct au8522_led_config {int gpio_output; int gpio_output_enable; int gpio_output_disable; } ;


 int au8522_readreg (struct au8522_state*,int) ;
 int au8522_writereg (struct au8522_state*,int,int) ;

__attribute__((used)) static int au8522_led_gpio_enable(struct au8522_state *state, int onoff)
{
 struct au8522_led_config *led_config = state->config.led_cfg;
 u8 val;


 if (!led_config || !led_config->gpio_output ||
     !led_config->gpio_output_enable || !led_config->gpio_output_disable)
  return 0;

 val = au8522_readreg(state, 0x4000 |
        (led_config->gpio_output & ~0xc000));
 if (onoff) {

  val &= ~((led_config->gpio_output_enable >> 8) & 0xff);
  val |= (led_config->gpio_output_enable & 0xff);
 } else {

  val &= ~((led_config->gpio_output_disable >> 8) & 0xff);
  val |= (led_config->gpio_output_disable & 0xff);
 }
 return au8522_writereg(state, 0x8000 |
          (led_config->gpio_output & ~0xc000), val);
}

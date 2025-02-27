
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpc32xx_gpio_chip {TYPE_1__* gpio_grp; } ;
struct TYPE_2__ {int inp_state; } ;


 int GPIO012_PIN_IN_SEL (int ,unsigned int) ;
 int gpreg_read (struct lpc32xx_gpio_chip*,int ) ;

__attribute__((used)) static int __get_gpio_state_p012(struct lpc32xx_gpio_chip *group,
 unsigned pin)
{
 return GPIO012_PIN_IN_SEL(gpreg_read(group, group->gpio_grp->inp_state),
  pin);
}

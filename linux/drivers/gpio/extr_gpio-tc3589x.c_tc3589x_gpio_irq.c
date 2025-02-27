
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u8 ;
struct TYPE_3__ {int domain; } ;
struct TYPE_4__ {TYPE_1__ irq; } ;
struct tc3589x_gpio {TYPE_2__ chip; struct tc3589x* tc3589x; } ;
struct tc3589x {int dummy; } ;
typedef int irqreturn_t ;


 int ARRAY_SIZE (unsigned int*) ;
 int CACHE_NR_BANKS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ TC3589x_GPIOIC0 ;
 int TC3589x_GPIOMIS0 ;
 int __ffs (unsigned int) ;
 int handle_nested_irq (int) ;
 int irq_find_mapping (int ,int) ;
 int tc3589x_block_read (struct tc3589x*,int ,int,unsigned int*) ;
 int tc3589x_reg_write (struct tc3589x*,scalar_t__,unsigned int) ;

__attribute__((used)) static irqreturn_t tc3589x_gpio_irq(int irq, void *dev)
{
 struct tc3589x_gpio *tc3589x_gpio = dev;
 struct tc3589x *tc3589x = tc3589x_gpio->tc3589x;
 u8 status[CACHE_NR_BANKS];
 int ret;
 int i;

 ret = tc3589x_block_read(tc3589x, TC3589x_GPIOMIS0,
     ARRAY_SIZE(status), status);
 if (ret < 0)
  return IRQ_NONE;

 for (i = 0; i < ARRAY_SIZE(status); i++) {
  unsigned int stat = status[i];
  if (!stat)
   continue;

  while (stat) {
   int bit = __ffs(stat);
   int line = i * 8 + bit;
   int irq = irq_find_mapping(tc3589x_gpio->chip.irq.domain,
         line);

   handle_nested_irq(irq);
   stat &= ~(1 << bit);
  }

  tc3589x_reg_write(tc3589x, TC3589x_GPIOIC0 + i, status[i]);
 }

 return IRQ_HANDLED;
}

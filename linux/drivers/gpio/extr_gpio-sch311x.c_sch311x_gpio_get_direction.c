
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sch311x_gpio_block {int lock; scalar_t__* config_regs; scalar_t__ runtime_reg; } ;
struct gpio_chip {int dummy; } ;


 int SCH311X_GPIO_CONF_DIR ;
 struct sch311x_gpio_block* gpiochip_get_data (struct gpio_chip*) ;
 int inb (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int sch311x_gpio_get_direction(struct gpio_chip *chip, unsigned offset)
{
 struct sch311x_gpio_block *block = gpiochip_get_data(chip);
 u8 data;

 spin_lock(&block->lock);
 data = inb(block->runtime_reg + block->config_regs[offset]);
 spin_unlock(&block->lock);

 return !!(data & SCH311X_GPIO_CONF_DIR);
}

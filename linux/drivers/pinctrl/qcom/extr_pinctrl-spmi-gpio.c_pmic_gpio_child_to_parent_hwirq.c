
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;



__attribute__((used)) static int pmic_gpio_child_to_parent_hwirq(struct gpio_chip *chip,
        unsigned int child_hwirq,
        unsigned int child_type,
        unsigned int *parent_hwirq,
        unsigned int *parent_type)
{
 *parent_hwirq = child_hwirq + 0xc0;
 *parent_type = child_type;

 return 0;
}

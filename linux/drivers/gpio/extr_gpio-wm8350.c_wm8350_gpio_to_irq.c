
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350_gpio_data {struct wm8350* wm8350; } ;
struct wm8350 {int irq_base; } ;
struct gpio_chip {int dummy; } ;


 int EINVAL ;
 int WM8350_IRQ_GPIO (unsigned int) ;
 struct wm8350_gpio_data* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int wm8350_gpio_to_irq(struct gpio_chip *chip, unsigned offset)
{
 struct wm8350_gpio_data *wm8350_gpio = gpiochip_get_data(chip);
 struct wm8350 *wm8350 = wm8350_gpio->wm8350;

 if (!wm8350->irq_base)
  return -EINVAL;

 return wm8350->irq_base + WM8350_IRQ_GPIO(offset);
}

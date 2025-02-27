
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jz4780_gpio_softc {int dummy; } ;
typedef int device_t ;


 int EINVAL ;
 int GPIO_PIN_INPUT ;
 int GPIO_PIN_OUTPUT ;
 int GPIO_PIN_PULLDOWN ;
 int GPIO_PIN_PULLUP ;
 int JZ4780_GPIO_LOCK (struct jz4780_gpio_softc*) ;
 int JZ4780_GPIO_PINS ;
 int JZ4780_GPIO_UNLOCK (struct jz4780_gpio_softc*) ;
 struct jz4780_gpio_softc* device_get_softc (int ) ;
 int jz4780_gpio_pin_set_bias (struct jz4780_gpio_softc*,int,int) ;
 int jz4780_gpio_pin_set_direction (struct jz4780_gpio_softc*,int,int) ;

__attribute__((used)) static int
jz4780_gpio_pin_setflags(device_t dev, uint32_t pin, uint32_t flags)
{
 struct jz4780_gpio_softc *sc;
 int retval;

 if (pin >= JZ4780_GPIO_PINS)
  return (EINVAL);

 sc = device_get_softc(dev);
 JZ4780_GPIO_LOCK(sc);
 retval = jz4780_gpio_pin_set_direction(sc, pin,
     flags & (GPIO_PIN_INPUT | GPIO_PIN_OUTPUT));
 if (retval == 0)
  retval = jz4780_gpio_pin_set_bias(sc, pin,
      flags & (GPIO_PIN_PULLDOWN | GPIO_PIN_PULLUP));
 JZ4780_GPIO_UNLOCK(sc);

 return (retval);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ar71xx_gpio_softc {int gpio_npins; TYPE_1__* gpio_pins; } ;
typedef int device_t ;
struct TYPE_2__ {int gp_pin; } ;


 int AR71XX_GPIO_CLEAR ;
 int AR71XX_GPIO_IN ;
 int AR71XX_GPIO_SET ;
 int EINVAL ;
 int GPIO_READ (struct ar71xx_gpio_softc*,int ) ;
 int GPIO_WRITE (struct ar71xx_gpio_softc*,int ,int) ;
 struct ar71xx_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
ar71xx_gpio_pin_toggle(device_t dev, uint32_t pin)
{
 int res, i;
 struct ar71xx_gpio_softc *sc = device_get_softc(dev);

 for (i = 0; i < sc->gpio_npins; i++) {
  if (sc->gpio_pins[i].gp_pin == pin)
   break;
 }

 if (i >= sc->gpio_npins)
  return (EINVAL);

 res = (GPIO_READ(sc, AR71XX_GPIO_IN) & (1 << pin)) ? 1 : 0;
 if (res)
  GPIO_WRITE(sc, AR71XX_GPIO_CLEAR, (1 << pin));
 else
  GPIO_WRITE(sc, AR71XX_GPIO_SET, (1 << pin));

 return (0);
}

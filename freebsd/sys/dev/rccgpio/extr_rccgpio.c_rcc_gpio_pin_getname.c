
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct rcc_gpio_softc {scalar_t__ sc_gpio_npins; } ;
typedef int device_t ;
struct TYPE_2__ {int name; } ;


 int EINVAL ;
 int GPIOMAXNAME ;
 struct rcc_gpio_softc* device_get_softc (int ) ;
 int memcpy (char*,int ,int ) ;
 TYPE_1__* rcc_pins ;

__attribute__((used)) static int
rcc_gpio_pin_getname(device_t dev, uint32_t pin, char *name)
{
 struct rcc_gpio_softc *sc;

 sc = device_get_softc(dev);
 if (pin >= sc->sc_gpio_npins)
  return (EINVAL);

 memcpy(name, rcc_pins[pin].name, GPIOMAXNAME);

 return (0);
}

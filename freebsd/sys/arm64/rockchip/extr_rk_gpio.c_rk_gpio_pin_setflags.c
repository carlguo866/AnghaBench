
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rk_gpio_softc {int dummy; } ;
typedef int device_t ;


 int GPIO_PIN_INPUT ;
 int GPIO_PIN_OUTPUT ;
 int RK_GPIO_LOCK (struct rk_gpio_softc*) ;
 int RK_GPIO_READ (struct rk_gpio_softc*,int ) ;
 int RK_GPIO_SWPORTA_DDR ;
 int RK_GPIO_UNLOCK (struct rk_gpio_softc*) ;
 int RK_GPIO_WRITE (struct rk_gpio_softc*,int ,int) ;
 struct rk_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
rk_gpio_pin_setflags(device_t dev, uint32_t pin, uint32_t flags)
{
 struct rk_gpio_softc *sc;
 uint32_t reg;

 sc = device_get_softc(dev);


 RK_GPIO_LOCK(sc);

 reg = RK_GPIO_READ(sc, RK_GPIO_SWPORTA_DDR);
 if (flags & GPIO_PIN_INPUT)
  reg &= ~(1 << pin);
 else if (flags & GPIO_PIN_OUTPUT)
  reg |= (1 << pin);

 RK_GPIO_WRITE(sc, RK_GPIO_SWPORTA_DDR, reg);
 RK_GPIO_UNLOCK(sc);

 return (0);
}

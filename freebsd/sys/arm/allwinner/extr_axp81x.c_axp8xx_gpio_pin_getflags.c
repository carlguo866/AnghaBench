
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct axp8xx_softc {int dummy; } ;
typedef int device_t ;
struct TYPE_3__ {int ctrl_reg; } ;


 int AXP_GPIO_FUNC ;
 int AXP_GPIO_FUNC_DRVHI ;
 int AXP_GPIO_FUNC_DRVLO ;
 int AXP_GPIO_FUNC_INPUT ;
 int AXP_GPIO_FUNC_SHIFT ;
 int AXP_LOCK (struct axp8xx_softc*) ;
 int AXP_UNLOCK (struct axp8xx_softc*) ;
 int EINVAL ;
 size_t GPIO_PIN_INPUT ;
 size_t GPIO_PIN_OUTPUT ;
 TYPE_1__* axp8xx_pins ;
 int axp8xx_read (int ,int ,int*,int) ;
 struct axp8xx_softc* device_get_softc (int ) ;
 size_t nitems (TYPE_1__*) ;

__attribute__((used)) static int
axp8xx_gpio_pin_getflags(device_t dev, uint32_t pin, uint32_t *flags)
{
 struct axp8xx_softc *sc;
 uint8_t data, func;
 int error;

 if (pin >= nitems(axp8xx_pins))
  return (EINVAL);

 sc = device_get_softc(dev);

 AXP_LOCK(sc);
 error = axp8xx_read(dev, axp8xx_pins[pin].ctrl_reg, &data, 1);
 if (error == 0) {
  func = (data & AXP_GPIO_FUNC) >> AXP_GPIO_FUNC_SHIFT;
  if (func == AXP_GPIO_FUNC_INPUT)
   *flags = GPIO_PIN_INPUT;
  else if (func == AXP_GPIO_FUNC_DRVLO ||
      func == AXP_GPIO_FUNC_DRVHI)
   *flags = GPIO_PIN_OUTPUT;
  else
   *flags = 0;
 }
 AXP_UNLOCK(sc);

 return (error);
}

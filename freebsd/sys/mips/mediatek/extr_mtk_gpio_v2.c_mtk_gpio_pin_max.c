
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_gpio_softc {int num_pins; } ;
typedef int device_t ;


 struct mtk_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
mtk_gpio_pin_max(device_t dev, int *maxpin)
{
 struct mtk_gpio_softc *sc = device_get_softc(dev);

 *maxpin = sc->num_pins - 1;

 return (0);
}

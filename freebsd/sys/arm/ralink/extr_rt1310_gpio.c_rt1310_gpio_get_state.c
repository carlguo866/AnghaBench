
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_2__ {int lg_dev; } ;


 int ENXIO ;
 int rt1310_gpio_pin_get (int ,int,int*) ;
 TYPE_1__* rt1310_gpio_sc ;

int
rt1310_gpio_get_state(device_t dev, int pin, int *state)
{
 if (rt1310_gpio_sc == ((void*)0))
  return (ENXIO);

 return rt1310_gpio_pin_get(rt1310_gpio_sc->lg_dev, pin, state);
}

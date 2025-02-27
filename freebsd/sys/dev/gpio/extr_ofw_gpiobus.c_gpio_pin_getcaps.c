
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* gpio_pin_t ;
struct TYPE_3__ {int pin; int * dev; } ;


 int GPIO_PIN_GETCAPS (int *,int ,int *) ;
 int KASSERT (int ,char*) ;

int
gpio_pin_getcaps(gpio_pin_t pin, uint32_t *caps)
{

 KASSERT(pin != ((void*)0), ("GPIO pin is NULL."));
 KASSERT(pin->dev != ((void*)0), ("GPIO pin device is NULL."));
 return (GPIO_PIN_GETCAPS(pin->dev, pin->pin, caps));
}

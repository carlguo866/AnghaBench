
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiobus_softc {int sc_busdev; } ;
struct gpiobus_ivar {int npins; int* pins; } ;
typedef int device_t ;


 int EINVAL ;
 struct gpiobus_ivar* GPIOBUS_IVAR (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ gpiobus_acquire_child_pins (int ,int ) ;
 scalar_t__ gpiobus_alloc_ivars (struct gpiobus_ivar*) ;

__attribute__((used)) static int
gpiobus_parse_pins(struct gpiobus_softc *sc, device_t child, int mask)
{
 struct gpiobus_ivar *devi = GPIOBUS_IVAR(child);
 int i, npins;

 npins = 0;
 for (i = 0; i < 32; i++) {
  if (mask & (1 << i))
   npins++;
 }
 if (npins == 0) {
  device_printf(child, "empty pin mask\n");
  return (EINVAL);
 }
 devi->npins = npins;
 if (gpiobus_alloc_ivars(devi) != 0) {
  device_printf(child, "cannot allocate device ivars\n");
  return (EINVAL);
 }
 npins = 0;
 for (i = 0; i < 32; i++) {
  if ((mask & (1 << i)) == 0)
   continue;
  devi->pins[npins++] = i;
 }

 if (gpiobus_acquire_child_pins(sc->sc_busdev, child) != 0)
  return (EINVAL);
 return (0);
}

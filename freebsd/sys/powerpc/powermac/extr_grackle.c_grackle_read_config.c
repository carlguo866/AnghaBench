
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int u_int32_t ;
typedef int u_int ;
struct grackle_softc {scalar_t__ sc_data; } ;
typedef int device_t ;


 scalar_t__ badaddr (void*,int) ;
 struct grackle_softc* device_get_softc (int ) ;
 int grackle_disable_config (struct grackle_softc*) ;
 scalar_t__ grackle_enable_config (struct grackle_softc*,int,int,int,int) ;
 int in16rb (scalar_t__) ;
 int in32rb (scalar_t__) ;
 int in8rb (scalar_t__) ;

__attribute__((used)) static u_int32_t
grackle_read_config(device_t dev, u_int bus, u_int slot, u_int func, u_int reg,
    int width)
{
 struct grackle_softc *sc;
 vm_offset_t caoff;
 u_int32_t retval = 0xffffffff;

 sc = device_get_softc(dev);
 caoff = sc->sc_data + (reg & 0x03);

 if (grackle_enable_config(sc, bus, slot, func, reg) != 0) {






  if (bus > 0) {
    if (badaddr((void *)sc->sc_data, 4)) {
     return (retval);
    }
  }

  switch (width) {
  case 1:
   retval = (in8rb(caoff));
   break;
  case 2:
   retval = (in16rb(caoff));
   break;
  case 4:
   retval = (in32rb(caoff));
   break;
  }
 }
 grackle_disable_config(sc);

 return (retval);
}

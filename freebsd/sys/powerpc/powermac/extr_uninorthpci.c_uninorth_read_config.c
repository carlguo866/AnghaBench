
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int u_int32_t ;
typedef int u_int ;
struct uninorth_softc {int sc_cfg_mtx; scalar_t__ sc_data; } ;
typedef int device_t ;


 struct uninorth_softc* device_get_softc (int ) ;
 int in16rb (scalar_t__) ;
 int in32rb (scalar_t__) ;
 int in8rb (scalar_t__) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 scalar_t__ uninorth_enable_config (struct uninorth_softc*,int,int,int,int) ;

__attribute__((used)) static u_int32_t
uninorth_read_config(device_t dev, u_int bus, u_int slot, u_int func, u_int reg,
    int width)
{
 struct uninorth_softc *sc;
 vm_offset_t caoff;
 u_int32_t val;

 sc = device_get_softc(dev);
 caoff = sc->sc_data + (reg & 0x07);
 val = 0xffffffff;

 mtx_lock_spin(&sc->sc_cfg_mtx);
 if (uninorth_enable_config(sc, bus, slot, func, reg) != 0) {
  switch (width) {
  case 1:
   val = in8rb(caoff);
   break;
  case 2:
   val = in16rb(caoff);
   break;
  case 4:
   val = in32rb(caoff);
   break;
  }
 }
 mtx_unlock_spin(&sc->sc_cfg_mtx);

 return (val);
}

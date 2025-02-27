
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_pcib_softc {scalar_t__ sc_type; } ;
typedef int device_t ;


 scalar_t__ MV_TYPE_PCI ;
 int PCI_SLOTMAX ;
 struct mv_pcib_softc* device_get_softc (int ) ;

__attribute__((used)) static int
mv_pcib_maxslots(device_t dev)
{
 struct mv_pcib_softc *sc = device_get_softc(dev);

 return ((sc->sc_type != MV_TYPE_PCI) ? 1 : PCI_SLOTMAX);
}

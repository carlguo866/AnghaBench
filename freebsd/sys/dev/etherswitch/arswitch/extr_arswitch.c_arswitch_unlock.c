
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arswitch_softc {int dummy; } ;
typedef int device_t ;


 int ARSWITCH_LOCK_ASSERT (struct arswitch_softc*,int ) ;
 int ARSWITCH_UNLOCK (struct arswitch_softc*) ;
 int MA_OWNED ;
 struct arswitch_softc* device_get_softc (int ) ;

__attribute__((used)) static void
arswitch_unlock(device_t dev)
{
 struct arswitch_softc *sc = device_get_softc(dev);

 ARSWITCH_LOCK_ASSERT(sc, MA_OWNED);
 ARSWITCH_UNLOCK(sc);
}

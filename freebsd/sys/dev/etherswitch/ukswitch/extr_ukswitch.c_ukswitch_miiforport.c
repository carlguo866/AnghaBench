
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ukswitch_softc {int numports; int ** miibus; } ;
struct mii_data {int dummy; } ;


 struct mii_data* device_get_softc (int ) ;

__attribute__((used)) static inline struct mii_data *
ukswitch_miiforport(struct ukswitch_softc *sc, int port)
{

 if (port < 0 || port > sc->numports)
  return (((void*)0));
 return (device_get_softc(*sc->miibus[port]));
}

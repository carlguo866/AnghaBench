
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xae_softc {int dummy; } ;
struct ifnet {struct xae_softc* if_softc; } ;


 int XAE_LOCK (struct xae_softc*) ;
 int XAE_UNLOCK (struct xae_softc*) ;
 int xae_media_change_locked (struct xae_softc*) ;

__attribute__((used)) static int
xae_media_change(struct ifnet * ifp)
{
 struct xae_softc *sc;
 int error;

 sc = ifp->if_softc;

 XAE_LOCK(sc);
 error = xae_media_change_locked(sc);
 XAE_UNLOCK(sc);

 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lacp_softc {int lsc_suppress_distributing; TYPE_2__* lsc_softc; } ;
struct TYPE_4__ {TYPE_1__* sc_ifp; } ;
struct TYPE_3__ {int if_vnet; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int FALSE ;
 int LACP_LOCK_ASSERT (struct lacp_softc*) ;
 int LACP_TRACE (int *) ;

__attribute__((used)) static void
lacp_transit_expire(void *vp)
{
 struct lacp_softc *lsc = vp;

 LACP_LOCK_ASSERT(lsc);

 CURVNET_SET(lsc->lsc_softc->sc_ifp->if_vnet);
 LACP_TRACE(((void*)0));
 CURVNET_RESTORE();

 lsc->lsc_suppress_distributing = FALSE;
}

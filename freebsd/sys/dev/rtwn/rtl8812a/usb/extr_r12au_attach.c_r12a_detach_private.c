
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {struct r12a_softc* sc_priv; } ;
struct r12a_softc {int dummy; } ;


 int M_RTWN_PRIV ;
 int free (struct r12a_softc*,int ) ;

void
r12a_detach_private(struct rtwn_softc *sc)
{
 struct r12a_softc *rs = sc->sc_priv;

 free(rs, M_RTWN_PRIV);
}

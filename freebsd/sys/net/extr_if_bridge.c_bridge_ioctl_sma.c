
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifbrparam {int ifbrp_maxage; } ;
struct bridge_softc {int sc_stp; } ;


 int bstp_set_maxage (int *,int ) ;

__attribute__((used)) static int
bridge_ioctl_sma(struct bridge_softc *sc, void *arg)
{
 struct ifbrparam *param = arg;

 return (bstp_set_maxage(&sc->sc_stp, param->ifbrp_maxage));
}

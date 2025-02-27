
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifbreq {int ifbr_ifsflags; } ;
struct bridge_softc {int dummy; } ;


 int bridge_in_bsd_mode (struct bridge_softc*) ;
 int bridge_rtflush (struct bridge_softc*,int ) ;

__attribute__((used)) static int
bridge_ioctl_flush(struct bridge_softc *sc, void *arg)
{
 struct ifbreq *req = arg;

 if (!bridge_in_bsd_mode(sc)) {
  return (0);
 }
 bridge_rtflush(sc, req->ifbr_ifsflags);
 return (0);
}

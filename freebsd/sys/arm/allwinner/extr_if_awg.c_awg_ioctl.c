
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct mii_data {int mii_media; } ;
struct ifreq {int ifr_reqcap; } ;
struct awg_softc {int if_flags; int miibus; } ;
typedef int if_t ;
typedef scalar_t__ caddr_t ;


 int AWG_LOCK (struct awg_softc*) ;
 int AWG_UNLOCK (struct awg_softc*) ;
 int CSUM_IP ;
 int CSUM_TCP ;
 int CSUM_UDP ;
 int IFCAP_POLLING ;
 int IFCAP_RXCSUM ;
 int IFCAP_TXCSUM ;
 int IFCAP_VLAN_MTU ;
 int IFF_ALLMULTI ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;






 int awg_disable_intr (struct awg_softc*) ;
 int awg_enable_intr (struct awg_softc*) ;
 int awg_init_locked (struct awg_softc*) ;
 int awg_poll ;
 int awg_setup_rxfilter (struct awg_softc*) ;
 int awg_stop (struct awg_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int ether_ioctl (int ,int,scalar_t__) ;
 int ether_poll_deregister (int ) ;
 int ether_poll_register (int ,int ) ;
 int if_getcapenable (int ) ;
 int if_getdrvflags (int ) ;
 int if_getflags (int ) ;
 struct awg_softc* if_getsoftc (int ) ;
 int if_setcapenablebit (int ,int,int) ;
 int if_sethwassistbits (int ,int,int) ;
 int if_togglecapenable (int ,int) ;
 int ifmedia_ioctl (int ,struct ifreq*,int *,int) ;

__attribute__((used)) static int
awg_ioctl(if_t ifp, u_long cmd, caddr_t data)
{
 struct awg_softc *sc;
 struct mii_data *mii;
 struct ifreq *ifr;
 int flags, mask, error;

 sc = if_getsoftc(ifp);
 mii = device_get_softc(sc->miibus);
 ifr = (struct ifreq *)data;
 error = 0;

 switch (cmd) {
 case 129:
  AWG_LOCK(sc);
  if (if_getflags(ifp) & IFF_UP) {
   if (if_getdrvflags(ifp) & IFF_DRV_RUNNING) {
    flags = if_getflags(ifp) ^ sc->if_flags;
    if ((flags & (IFF_PROMISC|IFF_ALLMULTI)) != 0)
     awg_setup_rxfilter(sc);
   } else
    awg_init_locked(sc);
  } else {
   if (if_getdrvflags(ifp) & IFF_DRV_RUNNING)
    awg_stop(sc);
  }
  sc->if_flags = if_getflags(ifp);
  AWG_UNLOCK(sc);
  break;
 case 133:
 case 132:
  if (if_getdrvflags(ifp) & IFF_DRV_RUNNING) {
   AWG_LOCK(sc);
   awg_setup_rxfilter(sc);
   AWG_UNLOCK(sc);
  }
  break;
 case 128:
 case 131:
  error = ifmedia_ioctl(ifp, ifr, &mii->mii_media, cmd);
  break;
 case 130:
  mask = ifr->ifr_reqcap ^ if_getcapenable(ifp);
  if (mask & IFCAP_VLAN_MTU)
   if_togglecapenable(ifp, IFCAP_VLAN_MTU);
  if (mask & IFCAP_RXCSUM)
   if_togglecapenable(ifp, IFCAP_RXCSUM);
  if (mask & IFCAP_TXCSUM)
   if_togglecapenable(ifp, IFCAP_TXCSUM);
  if ((if_getcapenable(ifp) & IFCAP_TXCSUM) != 0)
   if_sethwassistbits(ifp, CSUM_IP | CSUM_UDP | CSUM_TCP, 0);
  else
   if_sethwassistbits(ifp, 0, CSUM_IP | CSUM_UDP | CSUM_TCP);
  break;
 default:
  error = ether_ioctl(ifp, cmd, data);
  break;
 }

 return (error);
}

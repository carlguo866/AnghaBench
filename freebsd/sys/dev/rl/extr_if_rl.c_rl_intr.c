
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct rl_softc {scalar_t__ suspended; struct ifnet* rl_ifp; } ;
struct ifnet {int if_capenable; int if_drv_flags; int if_snd; } ;


 int CSR_READ_2 (struct rl_softc*,int ) ;
 int CSR_WRITE_2 (struct rl_softc*,int ,int) ;
 int IFCAP_POLLING ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int RL_IMR ;
 int RL_INTRS ;
 int RL_ISR ;
 int RL_ISR_RX_ERR ;
 int RL_ISR_RX_OK ;
 int RL_ISR_SYSTEM_ERR ;
 int RL_ISR_TX_ERR ;
 int RL_ISR_TX_OK ;
 int RL_LOCK (struct rl_softc*) ;
 int RL_UNLOCK (struct rl_softc*) ;
 int rl_init_locked (struct rl_softc*) ;
 int rl_rxeof (struct rl_softc*) ;
 int rl_start_locked (struct ifnet*) ;
 int rl_txeof (struct rl_softc*) ;

__attribute__((used)) static void
rl_intr(void *arg)
{
 struct rl_softc *sc = arg;
 struct ifnet *ifp = sc->rl_ifp;
 uint16_t status;
 int count;

 RL_LOCK(sc);

 if (sc->suspended)
  goto done_locked;






 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
  goto done_locked2;
 status = CSR_READ_2(sc, RL_ISR);
 if (status == 0xffff || (status & RL_INTRS) == 0)
  goto done_locked;



 CSR_WRITE_2(sc, RL_IMR, 0);
 for (count = 16; count > 0; count--) {
  CSR_WRITE_2(sc, RL_ISR, status);
  if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
   if (status & (RL_ISR_RX_OK | RL_ISR_RX_ERR))
    rl_rxeof(sc);
   if (status & (RL_ISR_TX_OK | RL_ISR_TX_ERR))
    rl_txeof(sc);
   if (status & RL_ISR_SYSTEM_ERR) {
    ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
    rl_init_locked(sc);
    RL_UNLOCK(sc);
    return;
   }
  }
  status = CSR_READ_2(sc, RL_ISR);

  if (status == 0xffff || (status & RL_INTRS) == 0)
   break;
 }

 if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
  rl_start_locked(ifp);

done_locked2:
 if (ifp->if_drv_flags & IFF_DRV_RUNNING)
  CSR_WRITE_2(sc, RL_IMR, RL_INTRS);
done_locked:
 RL_UNLOCK(sc);
}

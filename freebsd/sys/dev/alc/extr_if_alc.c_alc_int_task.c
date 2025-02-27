
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ifnet {int if_drv_flags; int if_snd; } ;
struct alc_softc {int alc_morework; int alc_int_task; int alc_tq; int alc_dev; int alc_process_limit; struct ifnet* alc_ifp; } ;


 int ALC_INTRS ;
 int ALC_INTR_STATUS ;
 int ALC_LOCK (struct alc_softc*) ;
 int ALC_UNLOCK (struct alc_softc*) ;
 int CSR_READ_4 (struct alc_softc*,int ) ;
 int CSR_WRITE_4 (struct alc_softc*,int ,int) ;
 int EAGAIN ;
 int EIO ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int INTR_DIS_INT ;
 int INTR_DMA_RD_TO_RST ;
 int INTR_DMA_WR_TO_RST ;
 int INTR_RX_PKT ;
 int INTR_TXQ_TO_RST ;
 int alc_init_locked (struct alc_softc*) ;
 int alc_rxintr (struct alc_softc*,int ) ;
 int alc_start_locked (struct ifnet*) ;
 int device_printf (int ,char*) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
alc_int_task(void *arg, int pending)
{
 struct alc_softc *sc;
 struct ifnet *ifp;
 uint32_t status;
 int more;

 sc = (struct alc_softc *)arg;
 ifp = sc->alc_ifp;

 status = CSR_READ_4(sc, ALC_INTR_STATUS);
 ALC_LOCK(sc);
 if (sc->alc_morework != 0) {
  sc->alc_morework = 0;
  status |= INTR_RX_PKT;
 }
 if ((status & ALC_INTRS) == 0)
  goto done;


 CSR_WRITE_4(sc, ALC_INTR_STATUS, status | INTR_DIS_INT);

 more = 0;
 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
  if ((status & INTR_RX_PKT) != 0) {
   more = alc_rxintr(sc, sc->alc_process_limit);
   if (more == EAGAIN)
    sc->alc_morework = 1;
   else if (more == EIO) {
    ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
    alc_init_locked(sc);
    ALC_UNLOCK(sc);
    return;
   }
  }
  if ((status & (INTR_DMA_RD_TO_RST | INTR_DMA_WR_TO_RST |
      INTR_TXQ_TO_RST)) != 0) {
   if ((status & INTR_DMA_RD_TO_RST) != 0)
    device_printf(sc->alc_dev,
        "DMA read error! -- resetting\n");
   if ((status & INTR_DMA_WR_TO_RST) != 0)
    device_printf(sc->alc_dev,
        "DMA write error! -- resetting\n");
   if ((status & INTR_TXQ_TO_RST) != 0)
    device_printf(sc->alc_dev,
        "TxQ reset! -- resetting\n");
   ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
   alc_init_locked(sc);
   ALC_UNLOCK(sc);
   return;
  }
  if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0 &&
      !IFQ_DRV_IS_EMPTY(&ifp->if_snd))
   alc_start_locked(ifp);
 }

 if (more == EAGAIN ||
     (CSR_READ_4(sc, ALC_INTR_STATUS) & ALC_INTRS) != 0) {
  ALC_UNLOCK(sc);
  taskqueue_enqueue(sc->alc_tq, &sc->alc_int_task);
  return;
 }

done:
 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {

  CSR_WRITE_4(sc, ALC_INTR_STATUS, 0x7FFFFFFF);
 }
 ALC_UNLOCK(sc);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct wpi_tx_ring {int queued; } ;
struct wpi_softc {struct wpi_tx_ring* txq; } ;


 int WPI_TXQ_STATE_LOCK (struct wpi_softc*) ;
 int WPI_TXQ_STATE_UNLOCK (struct wpi_softc*) ;
 int WPI_TX_RING_HIMARK ;

__attribute__((used)) static __inline int
wpi_tx_ring_free_space(struct wpi_softc *sc, uint16_t ac)
{
 struct wpi_tx_ring *ring = &sc->txq[ac];
 int retval;

 WPI_TXQ_STATE_LOCK(sc);
 retval = WPI_TX_RING_HIMARK - ring->queued;
 WPI_TXQ_STATE_UNLOCK(sc);

 return retval;
}

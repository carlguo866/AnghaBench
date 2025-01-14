
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct vte_softc {int vte_dev; } ;


 int CSR_READ_2 (struct vte_softc*,int ) ;
 int CSR_WRITE_2 (struct vte_softc*,int ,int) ;
 int DELAY (int) ;
 int MCR0_RX_ENB ;
 int MCR0_TX_ENB ;
 int VTE_LOCK_ASSERT (struct vte_softc*) ;
 int VTE_MCR0 ;
 int VTE_TIMEOUT ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static void
vte_stop_mac(struct vte_softc *sc)
{
 uint16_t mcr;
 int i;

 VTE_LOCK_ASSERT(sc);


 mcr = CSR_READ_2(sc, VTE_MCR0);
 if ((mcr & (MCR0_RX_ENB | MCR0_TX_ENB)) != 0) {
  mcr &= ~(MCR0_RX_ENB | MCR0_TX_ENB);
  CSR_WRITE_2(sc, VTE_MCR0, mcr);
  for (i = VTE_TIMEOUT; i > 0; i--) {
   mcr = CSR_READ_2(sc, VTE_MCR0);
   if ((mcr & (MCR0_RX_ENB | MCR0_TX_ENB)) == 0)
    break;
   DELAY(10);
  }
  if (i == 0)
   device_printf(sc->vte_dev,
       "could not disable RX/TX MAC(0x%04x)!\n", mcr);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct alc_softc {int alc_dev; } ;


 int ALC_IDLE_STATUS ;
 int ALC_MAC_CFG ;
 int ALC_TIMEOUT ;
 int CSR_READ_4 (struct alc_softc*,int ) ;
 int CSR_WRITE_4 (struct alc_softc*,int ,int) ;
 int DELAY (int) ;
 int IDLE_STATUS_RXMAC ;
 int IDLE_STATUS_TXMAC ;
 int MAC_CFG_RX_ENB ;
 int MAC_CFG_TX_ENB ;
 int alc_stop_queue (struct alc_softc*) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static void
alc_stop_mac(struct alc_softc *sc)
{
 uint32_t reg;
 int i;

 alc_stop_queue(sc);

 reg = CSR_READ_4(sc, ALC_MAC_CFG);
 if ((reg & (MAC_CFG_TX_ENB | MAC_CFG_RX_ENB)) != 0) {
  reg &= ~(MAC_CFG_TX_ENB | MAC_CFG_RX_ENB);
  CSR_WRITE_4(sc, ALC_MAC_CFG, reg);
 }
 for (i = ALC_TIMEOUT; i > 0; i--) {
  reg = CSR_READ_4(sc, ALC_IDLE_STATUS);
  if ((reg & (IDLE_STATUS_RXMAC | IDLE_STATUS_TXMAC)) == 0)
   break;
  DELAY(10);
 }
 if (i == 0)
  device_printf(sc->alc_dev,
      "could not disable Rx/Tx MAC(0x%08x)!\n", reg);
}

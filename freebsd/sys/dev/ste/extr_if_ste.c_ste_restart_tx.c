
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ste_softc {int ste_dev; } ;


 int CSR_READ_2 (struct ste_softc*,int ) ;
 int CSR_WRITE_2 (struct ste_softc*,int ,int) ;
 int DELAY (int) ;
 int STE_MACCTL1 ;
 int STE_MACCTL1_TX_ENABLE ;
 int STE_MACCTL1_TX_ENABLED ;
 int STE_TIMEOUT ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
ste_restart_tx(struct ste_softc *sc)
{
 uint16_t mac;
 int i;

 for (i = 0; i < STE_TIMEOUT; i++) {
  mac = CSR_READ_2(sc, STE_MACCTL1);
  mac |= STE_MACCTL1_TX_ENABLE;
  CSR_WRITE_2(sc, STE_MACCTL1, mac);
  mac = CSR_READ_2(sc, STE_MACCTL1);
  if ((mac & STE_MACCTL1_TX_ENABLED) != 0)
   break;
  DELAY(10);
 }

 if (i == STE_TIMEOUT)
  device_printf(sc->ste_dev, "starting Tx failed");
}

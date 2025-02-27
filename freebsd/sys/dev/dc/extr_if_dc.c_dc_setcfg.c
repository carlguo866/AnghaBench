
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_softc {scalar_t__ dc_pmode; scalar_t__ dc_type; int dc_link; } ;


 int CSR_READ_4 (struct dc_softc*,int ) ;
 int CSR_WRITE_4 (struct dc_softc*,int ,int) ;
 int DC_10BTCTRL ;
 int DC_CLRBIT (struct dc_softc*,int ,int) ;
 scalar_t__ DC_IS_DAVICOM (struct dc_softc*) ;
 scalar_t__ DC_IS_INTEL (struct dc_softc*) ;
 scalar_t__ DC_IS_PNIC (struct dc_softc*) ;
 int DC_NETCFG ;
 int DC_NETCFG_FULLDUPLEX ;
 int DC_NETCFG_HEARTBEAT ;
 int DC_NETCFG_PCS ;
 int DC_NETCFG_PORTSEL ;
 int DC_NETCFG_RX_ON ;
 int DC_NETCFG_SCRAMBLER ;
 int DC_NETCFG_SPEEDSEL ;
 int DC_NETCFG_TX_ON ;
 scalar_t__ DC_PMODE_MII ;
 scalar_t__ DC_PMODE_SYM ;
 int DC_PN_GPIO_100TX_LOOP ;
 int DC_PN_GPIO_CLRBIT (struct dc_softc*,int ) ;
 int DC_PN_GPIO_SETBIT (struct dc_softc*,int ) ;
 int DC_PN_GPIO_SPEEDSEL ;
 int DC_PN_NWAY ;
 int DC_PN_NWAY_DUPLEX ;
 int DC_PN_NWAY_SPEEDSEL ;
 int DC_SETBIT (struct dc_softc*,int ,int) ;
 int DC_SIARESET ;
 int DC_SIA_RESET ;
 int DC_TCTL_AUTONEGENBL ;
 scalar_t__ DC_TYPE_98713 ;
 int DC_WATCHDOG ;
 int DC_WDOG_CTLWREN ;
 int DC_WDOG_JABBERDIS ;
 int DELAY (int) ;
 scalar_t__ IFM_100_TX ;
 scalar_t__ IFM_10_T ;
 int IFM_FDX ;
 int IFM_GMASK ;
 scalar_t__ IFM_HPNA_1 ;
 scalar_t__ IFM_NONE ;
 scalar_t__ IFM_SUBTYPE (int) ;
 int dc_netcfg_wait (struct dc_softc*) ;

__attribute__((used)) static void
dc_setcfg(struct dc_softc *sc, int media)
{
 int restart = 0, watchdogreg;

 if (IFM_SUBTYPE(media) == IFM_NONE)
  return;

 if (CSR_READ_4(sc, DC_NETCFG) & (DC_NETCFG_TX_ON | DC_NETCFG_RX_ON)) {
  restart = 1;
  DC_CLRBIT(sc, DC_NETCFG, (DC_NETCFG_TX_ON | DC_NETCFG_RX_ON));
  dc_netcfg_wait(sc);
 }

 if (IFM_SUBTYPE(media) == IFM_100_TX) {
  DC_CLRBIT(sc, DC_NETCFG, DC_NETCFG_SPEEDSEL);
  DC_SETBIT(sc, DC_NETCFG, DC_NETCFG_HEARTBEAT);
  if (sc->dc_pmode == DC_PMODE_MII) {
   if (DC_IS_INTEL(sc)) {

    watchdogreg = CSR_READ_4(sc, DC_WATCHDOG);
    watchdogreg &= ~DC_WDOG_CTLWREN;
    watchdogreg |= DC_WDOG_JABBERDIS;
    CSR_WRITE_4(sc, DC_WATCHDOG, watchdogreg);
   } else {
    DC_SETBIT(sc, DC_WATCHDOG, DC_WDOG_JABBERDIS);
   }
   DC_CLRBIT(sc, DC_NETCFG, (DC_NETCFG_PCS |
       DC_NETCFG_PORTSEL | DC_NETCFG_SCRAMBLER));
   if (sc->dc_type == DC_TYPE_98713)
    DC_SETBIT(sc, DC_NETCFG, (DC_NETCFG_PCS |
        DC_NETCFG_SCRAMBLER));
   if (!DC_IS_DAVICOM(sc))
    DC_SETBIT(sc, DC_NETCFG, DC_NETCFG_PORTSEL);
   DC_CLRBIT(sc, DC_10BTCTRL, 0xFFFF);
  } else {
   if (DC_IS_PNIC(sc)) {
    DC_PN_GPIO_SETBIT(sc, DC_PN_GPIO_SPEEDSEL);
    DC_PN_GPIO_SETBIT(sc, DC_PN_GPIO_100TX_LOOP);
    DC_SETBIT(sc, DC_PN_NWAY, DC_PN_NWAY_SPEEDSEL);
   }
   DC_SETBIT(sc, DC_NETCFG, DC_NETCFG_PORTSEL);
   DC_SETBIT(sc, DC_NETCFG, DC_NETCFG_PCS);
   DC_SETBIT(sc, DC_NETCFG, DC_NETCFG_SCRAMBLER);
  }
 }

 if (IFM_SUBTYPE(media) == IFM_10_T) {
  DC_SETBIT(sc, DC_NETCFG, DC_NETCFG_SPEEDSEL);
  DC_CLRBIT(sc, DC_NETCFG, DC_NETCFG_HEARTBEAT);
  if (sc->dc_pmode == DC_PMODE_MII) {

   if (DC_IS_INTEL(sc)) {
    watchdogreg = CSR_READ_4(sc, DC_WATCHDOG);
    watchdogreg &= ~DC_WDOG_CTLWREN;
    watchdogreg |= DC_WDOG_JABBERDIS;
    CSR_WRITE_4(sc, DC_WATCHDOG, watchdogreg);
   } else {
    DC_SETBIT(sc, DC_WATCHDOG, DC_WDOG_JABBERDIS);
   }
   DC_CLRBIT(sc, DC_NETCFG, (DC_NETCFG_PCS |
       DC_NETCFG_PORTSEL | DC_NETCFG_SCRAMBLER));
   if (sc->dc_type == DC_TYPE_98713)
    DC_SETBIT(sc, DC_NETCFG, DC_NETCFG_PCS);
   if (!DC_IS_DAVICOM(sc))
    DC_SETBIT(sc, DC_NETCFG, DC_NETCFG_PORTSEL);
   DC_CLRBIT(sc, DC_10BTCTRL, 0xFFFF);
  } else {
   if (DC_IS_PNIC(sc)) {
    DC_PN_GPIO_CLRBIT(sc, DC_PN_GPIO_SPEEDSEL);
    DC_PN_GPIO_SETBIT(sc, DC_PN_GPIO_100TX_LOOP);
    DC_CLRBIT(sc, DC_PN_NWAY, DC_PN_NWAY_SPEEDSEL);
   }
   DC_CLRBIT(sc, DC_NETCFG, DC_NETCFG_PORTSEL);
   DC_CLRBIT(sc, DC_NETCFG, DC_NETCFG_PCS);
   DC_CLRBIT(sc, DC_NETCFG, DC_NETCFG_SCRAMBLER);
   if (DC_IS_INTEL(sc)) {
    DC_CLRBIT(sc, DC_SIARESET, DC_SIA_RESET);
    DC_CLRBIT(sc, DC_10BTCTRL, 0xFFFF);
    if ((media & IFM_GMASK) == IFM_FDX)
     DC_SETBIT(sc, DC_10BTCTRL, 0x7F3D);
    else
     DC_SETBIT(sc, DC_10BTCTRL, 0x7F3F);
    DC_SETBIT(sc, DC_SIARESET, DC_SIA_RESET);
    DC_CLRBIT(sc, DC_10BTCTRL,
        DC_TCTL_AUTONEGENBL);
    DELAY(20000);
   }
  }
 }






 if (DC_IS_DAVICOM(sc)) {
  if (IFM_SUBTYPE(media) == IFM_HPNA_1) {
   DC_SETBIT(sc, DC_NETCFG, DC_NETCFG_PORTSEL);
   sc->dc_link = 1;
  } else {
   DC_CLRBIT(sc, DC_NETCFG, DC_NETCFG_PORTSEL);
  }
 }

 if ((media & IFM_GMASK) == IFM_FDX) {
  DC_SETBIT(sc, DC_NETCFG, DC_NETCFG_FULLDUPLEX);
  if (sc->dc_pmode == DC_PMODE_SYM && DC_IS_PNIC(sc))
   DC_SETBIT(sc, DC_PN_NWAY, DC_PN_NWAY_DUPLEX);
 } else {
  DC_CLRBIT(sc, DC_NETCFG, DC_NETCFG_FULLDUPLEX);
  if (sc->dc_pmode == DC_PMODE_SYM && DC_IS_PNIC(sc))
   DC_CLRBIT(sc, DC_PN_NWAY, DC_PN_NWAY_DUPLEX);
 }

 if (restart)
  DC_SETBIT(sc, DC_NETCFG, DC_NETCFG_TX_ON | DC_NETCFG_RX_ON);
}

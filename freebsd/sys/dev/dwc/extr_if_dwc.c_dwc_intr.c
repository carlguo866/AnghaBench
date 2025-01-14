
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dwc_softc {int dev; } ;


 int DMA_STATUS ;
 int DMA_STATUS_AIS ;
 int DMA_STATUS_FBI ;
 int DMA_STATUS_INTR_MASK ;
 int DMA_STATUS_NIS ;
 int DMA_STATUS_RI ;
 int DMA_STATUS_TI ;
 int DWC_LOCK (struct dwc_softc*) ;
 int DWC_UNLOCK (struct dwc_softc*) ;
 int INTERRUPT_STATUS ;
 int READ4 (struct dwc_softc*,int ) ;
 int SGMII_RGMII_SMII_CTRL_STATUS ;
 int WRITE4 (struct dwc_softc*,int ,int) ;
 int device_printf (int ,char*) ;
 int dwc_init_locked (struct dwc_softc*) ;
 int dwc_rxfinish_locked (struct dwc_softc*) ;
 int dwc_stop_locked (struct dwc_softc*) ;
 int dwc_txfinish_locked (struct dwc_softc*) ;
 int dwc_txstart_locked (struct dwc_softc*) ;

__attribute__((used)) static void
dwc_intr(void *arg)
{
 struct dwc_softc *sc;
 uint32_t reg;

 sc = arg;

 DWC_LOCK(sc);

 reg = READ4(sc, INTERRUPT_STATUS);
 if (reg)
  READ4(sc, SGMII_RGMII_SMII_CTRL_STATUS);

 reg = READ4(sc, DMA_STATUS);
 if (reg & DMA_STATUS_NIS) {
  if (reg & DMA_STATUS_RI)
   dwc_rxfinish_locked(sc);

  if (reg & DMA_STATUS_TI) {
   dwc_txfinish_locked(sc);
   dwc_txstart_locked(sc);
  }
 }

 if (reg & DMA_STATUS_AIS) {
  if (reg & DMA_STATUS_FBI) {

   device_printf(sc->dev,
       "Ethernet DMA error, restarting controller.\n");
   dwc_stop_locked(sc);
   dwc_init_locked(sc);
  }
 }

 WRITE4(sc, DMA_STATUS, reg & DMA_STATUS_INTR_MASK);
 DWC_UNLOCK(sc);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct bxe_softc {scalar_t__ dcbx_enabled; scalar_t__ dcb_state; } ;


 int BLOGD (struct bxe_softc*,int ,char*,char*,char*) ;
 scalar_t__ BXE_DCBX_ENABLED_INVALID ;
 scalar_t__ BXE_DCBX_ENABLED_OFF ;
 scalar_t__ BXE_DCBX_ENABLED_ON_NEG_OFF ;
 scalar_t__ BXE_DCBX_ENABLED_ON_NEG_ON ;
 int CHIP_IS_E1x (struct bxe_softc*) ;
 int DBG_LOAD ;
 scalar_t__ FALSE ;

void
bxe_dcbx_set_state(struct bxe_softc *sc,
                   uint8_t dcb_on,
                   uint32_t dcbx_enabled)
{
    if (!CHIP_IS_E1x(sc)) {
        sc->dcb_state = dcb_on;
        sc->dcbx_enabled = dcbx_enabled;
    } else {
        sc->dcb_state = FALSE;
        sc->dcbx_enabled = BXE_DCBX_ENABLED_INVALID;
    }
    BLOGD(sc, DBG_LOAD,
          "DCB state [%s:%s]\n",
          dcb_on ? "ON" : "OFF",
          (dcbx_enabled == BXE_DCBX_ENABLED_OFF) ? "user-mode" :
          (dcbx_enabled == BXE_DCBX_ENABLED_ON_NEG_OFF) ? "on-chip static" :
          (dcbx_enabled == BXE_DCBX_ENABLED_ON_NEG_ON) ?
          "on-chip with negotiation" : "invalid");
}

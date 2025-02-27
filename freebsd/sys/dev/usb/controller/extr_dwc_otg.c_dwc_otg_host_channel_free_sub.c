
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
struct dwc_otg_td {scalar_t__* channel; } ;
struct dwc_otg_softc {scalar_t__ sc_last_rx_status; int sc_active_rx_ep; TYPE_1__* sc_chan_state; } ;
struct TYPE_2__ {scalar_t__ wait_halted; scalar_t__ allocated; } ;


 int DOTG_HCCHAR (size_t) ;
 int DPRINTF (char*,size_t) ;
 scalar_t__ DWC_OTG_MAX_CHANNELS ;
 int DWC_OTG_READ_4 (struct dwc_otg_softc*,int ) ;
 int DWC_OTG_WRITE_4 (struct dwc_otg_softc*,int ,int) ;
 size_t GRXSTSRD_CHNUM_GET (scalar_t__) ;
 int HCCHAR_CHDIS ;
 int HCCHAR_CHENA ;
 int dwc_otg_common_rx_ack (struct dwc_otg_softc*) ;

__attribute__((used)) static void
dwc_otg_host_channel_free_sub(struct dwc_otg_softc *sc, struct dwc_otg_td *td, uint8_t index)
{
 uint32_t hcchar;
 uint8_t x;

 if (td->channel[index] >= DWC_OTG_MAX_CHANNELS)
  return;


 x = td->channel[index];
 td->channel[index] = DWC_OTG_MAX_CHANNELS;

 DPRINTF("CH=%d\n", x);





 sc->sc_chan_state[x].allocated = 0;


 if (sc->sc_last_rx_status != 0 &&
     GRXSTSRD_CHNUM_GET(sc->sc_last_rx_status) == x) {
  dwc_otg_common_rx_ack(sc);
 }


 sc->sc_active_rx_ep &= ~(1 << x);


 if (sc->sc_chan_state[x].wait_halted == 0)
  return;


 hcchar = DWC_OTG_READ_4(sc, DOTG_HCCHAR(x));
 if (hcchar & HCCHAR_CHENA) {
  DPRINTF("Halting channel %d\n", x);
  DWC_OTG_WRITE_4(sc, DOTG_HCCHAR(x),
      hcchar | HCCHAR_CHDIS);

 } else {
  sc->sc_chan_state[x].wait_halted = 0;
 }
}

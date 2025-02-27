
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int usb_error_t ;
struct TYPE_4__ {int control_act; scalar_t__ control_xfr; scalar_t__ control_hdr; } ;
struct usb_xfer {int aframes; int nframes; TYPE_3__* endpoint; struct octusb_qh** qh_start; TYPE_1__ flags_int; int * td_transfer_cache; int * td_transfer_first; } ;
struct octusb_softc {TYPE_2__* sc_port; } ;
struct octusb_qh {size_t root_port_index; int ep_handle; struct octusb_softc* sc; } ;
struct TYPE_6__ {int toggle_next; } ;
struct TYPE_5__ {int state; } ;


 int DPRINTFN (int,char*,struct usb_xfer*,TYPE_3__*) ;
 scalar_t__ cvmx_usb_get_toggle (int *,int ) ;
 int octusb_device_done (struct usb_xfer*,int ) ;
 int octusb_standard_done_sub (struct usb_xfer*) ;

__attribute__((used)) static void
octusb_standard_done(struct usb_xfer *xfer)
{
 struct octusb_softc *sc;
 struct octusb_qh *qh;
 usb_error_t error = 0;

 DPRINTFN(12, "xfer=%p endpoint=%p transfer done\n",
     xfer, xfer->endpoint);



 xfer->td_transfer_cache = xfer->td_transfer_first;

 if (xfer->flags_int.control_xfr) {

  if (xfer->flags_int.control_hdr)
   error = octusb_standard_done_sub(xfer);

  xfer->aframes = 1;

  if (xfer->td_transfer_cache == ((void*)0))
   goto done;
 }
 while (xfer->aframes != xfer->nframes) {

  error = octusb_standard_done_sub(xfer);

  xfer->aframes++;

  if (xfer->td_transfer_cache == ((void*)0))
   goto done;
 }

 if (xfer->flags_int.control_xfr &&
     !xfer->flags_int.control_act)
  error = octusb_standard_done_sub(xfer);

done:


 qh = xfer->qh_start[0];
 sc = qh->sc;

 xfer->endpoint->toggle_next =
     cvmx_usb_get_toggle(
     &sc->sc_port[qh->root_port_index].state,
     qh->ep_handle) ? 1 : 0;

 octusb_device_done(xfer, error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_endpoint_descriptor {int bEndpointAddress; int bmAttributes; int wMaxPacketSize; } ;
struct usb_endpoint {struct usb_endpoint_descriptor* edesc; } ;
struct TYPE_2__ {scalar_t__ usb_mode; } ;
struct usb_device {int bus; TYPE_1__ flags; } ;
struct dwc_otg_softc {int sc_bus; } ;


 int DPRINTFN (int,char*,struct usb_endpoint*) ;
 struct dwc_otg_softc* DWC_OTG_BUS2SC (int ) ;
 int MA_OWNED ;
 int UE_ADDR ;
 int UE_DIR_IN ;
 int UE_DIR_OUT ;
 int UE_XFERTYPE ;
 int UGETW (int ) ;
 int USB_BUS_LOCK_ASSERT (int ,int ) ;
 int USB_BUS_SPIN_LOCK (int *) ;
 int USB_BUS_SPIN_UNLOCK (int *) ;
 scalar_t__ USB_MODE_DEVICE ;
 int dwc_otg_clear_stall_sub_locked (struct dwc_otg_softc*,int ,int,int,int) ;

__attribute__((used)) static void
dwc_otg_clear_stall(struct usb_device *udev, struct usb_endpoint *ep)
{
 struct dwc_otg_softc *sc;
 struct usb_endpoint_descriptor *ed;

 DPRINTFN(5, "endpoint=%p\n", ep);

 USB_BUS_LOCK_ASSERT(udev->bus, MA_OWNED);


 if (udev->flags.usb_mode != USB_MODE_DEVICE) {

  return;
 }

 sc = DWC_OTG_BUS2SC(udev->bus);

 USB_BUS_SPIN_LOCK(&sc->sc_bus);


 ed = ep->edesc;


 dwc_otg_clear_stall_sub_locked(sc,
     UGETW(ed->wMaxPacketSize),
     (ed->bEndpointAddress & UE_ADDR),
     (ed->bmAttributes & UE_XFERTYPE),
     (ed->bEndpointAddress & (UE_DIR_IN | UE_DIR_OUT)));

 USB_BUS_SPIN_UNLOCK(&sc->sc_bus);
}

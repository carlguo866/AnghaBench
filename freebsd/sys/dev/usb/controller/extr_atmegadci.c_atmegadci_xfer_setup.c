
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct usb_xfer {scalar_t__ nframes; int endpointno; void** td_start; int max_packet_size; TYPE_2__* endpoint; } ;
struct usb_setup_params {int hc_max_packet_size; int hc_max_packet_count; int hc_max_frame_size; int* size; scalar_t__ buf; scalar_t__ err; TYPE_3__* udev; struct usb_xfer* curr_xfer; } ;
struct usb_hw_ep_profile {scalar_t__ support_multi_buffer; } ;
struct atmegadci_td {int ep_no; int support_multi_buffer; void* obj_next; int max_packet_size; } ;
struct atmegadci_softc {int dummy; } ;
struct TYPE_6__ {int bus; } ;
struct TYPE_5__ {TYPE_1__* edesc; } ;
struct TYPE_4__ {int bmAttributes; } ;


 struct atmegadci_softc* ATMEGA_BUS2SC (int ) ;
 int UE_ADDR ;
 int UE_CONTROL ;
 int UE_XFERTYPE ;
 struct atmegadci_td* USB_ADD_BYTES (scalar_t__,int) ;
 scalar_t__ USB_ERR_INVAL ;
 int USB_HOST_ALIGN ;
 int atmegadci_get_hw_ep_profile (TYPE_3__*,struct usb_hw_ep_profile const**,int) ;
 int usbd_transfer_setup_sub (struct usb_setup_params*) ;

__attribute__((used)) static void
atmegadci_xfer_setup(struct usb_setup_params *parm)
{
 const struct usb_hw_ep_profile *pf;
 struct atmegadci_softc *sc;
 struct usb_xfer *xfer;
 void *last_obj;
 uint32_t ntd;
 uint32_t n;
 uint8_t ep_no;

 sc = ATMEGA_BUS2SC(parm->udev->bus);
 xfer = parm->curr_xfer;






 parm->hc_max_packet_size = 0x500;
 parm->hc_max_packet_count = 1;
 parm->hc_max_frame_size = 0x500;

 usbd_transfer_setup_sub(parm);




 if ((xfer->endpoint->edesc->bmAttributes & UE_XFERTYPE) == UE_CONTROL) {

  ntd = xfer->nframes + 1 + 1
      + 1 ;
 } else {

  ntd = xfer->nframes + 1 ;
 }




 if (parm->err)
  return;




 last_obj = ((void*)0);




 ep_no = xfer->endpointno & UE_ADDR;
 atmegadci_get_hw_ep_profile(parm->udev, &pf, ep_no);

 if (pf == ((void*)0)) {

  parm->err = USB_ERR_INVAL;
  return;
 }


 parm->size[0] += ((-parm->size[0]) & (USB_HOST_ALIGN - 1));

 for (n = 0; n != ntd; n++) {

  struct atmegadci_td *td;

  if (parm->buf) {

   td = USB_ADD_BYTES(parm->buf, parm->size[0]);


   td->max_packet_size = xfer->max_packet_size;
   td->ep_no = ep_no;
   if (pf->support_multi_buffer) {
    td->support_multi_buffer = 1;
   }
   td->obj_next = last_obj;

   last_obj = td;
  }
  parm->size[0] += sizeof(*td);
 }

 xfer->td_start[0] = last_obj;
}

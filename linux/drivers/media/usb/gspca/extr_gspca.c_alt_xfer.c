
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bNumEndpoints; } ;
struct usb_host_interface {struct usb_host_endpoint* endpoint; TYPE_1__ desc; } ;
struct TYPE_4__ {int bmAttributes; scalar_t__ wMaxPacketSize; int bEndpointAddress; } ;
struct usb_host_endpoint {TYPE_2__ desc; } ;


 int USB_ENDPOINT_XFERTYPE_MASK ;
 scalar_t__ usb_endpoint_dir_in (TYPE_2__*) ;

__attribute__((used)) static struct usb_host_endpoint *alt_xfer(struct usb_host_interface *alt,
       int xfer, int xfer_ep)
{
 struct usb_host_endpoint *ep;
 int i, attr;

 for (i = 0; i < alt->desc.bNumEndpoints; i++) {
  ep = &alt->endpoint[i];
  attr = ep->desc.bmAttributes & USB_ENDPOINT_XFERTYPE_MASK;
  if (attr == xfer
      && ep->desc.wMaxPacketSize != 0
      && usb_endpoint_dir_in(&ep->desc)
      && (xfer_ep < 0 || ep->desc.bEndpointAddress == xfer_ep))
   return ep;
 }
 return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xfer {int dummy; } ;


 int USB_ERR_STALLED ;
 int musbotg_device_done (struct usb_xfer*,int ) ;

__attribute__((used)) static void
musbotg_xfer_stall(struct usb_xfer *xfer)
{
 musbotg_device_done(xfer, USB_ERR_STALLED);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct usb_device {int dummy; } ;



int xhci_update_device(struct usb_hcd *hcd, struct usb_device *udev)
{
 return 0;
}

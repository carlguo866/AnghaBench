
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct usb_host_endpoint {int desc; } ;
struct usb_hcd {TYPE_1__* driver; } ;
struct usb_device {scalar_t__ speed; int bus; } ;
typedef int gfp_t ;
struct TYPE_2__ {int (* free_streams ) (struct usb_hcd*,struct usb_device*,struct usb_host_endpoint**,unsigned int,int ) ;} ;


 scalar_t__ USB_SPEED_SUPER ;
 struct usb_hcd* bus_to_hcd (int ) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int stub1 (struct usb_hcd*,struct usb_device*,struct usb_host_endpoint**,unsigned int,int ) ;
 int usb_endpoint_xfer_bulk (int *) ;

void usb_free_streams(struct usb_interface *interface,
  struct usb_host_endpoint **eps, unsigned int num_eps,
  gfp_t mem_flags)
{
 struct usb_hcd *hcd;
 struct usb_device *dev;
 int i;

 dev = interface_to_usbdev(interface);
 hcd = bus_to_hcd(dev->bus);
 if (dev->speed != USB_SPEED_SUPER)
  return;


 for (i = 0; i < num_eps; i++)
  if (!usb_endpoint_xfer_bulk(&eps[i]->desc))
   return;

 hcd->driver->free_streams(hcd, dev, eps, num_eps, mem_flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ status; } ;
struct TYPE_10__ {TYPE_3__ power; } ;
struct usb_interface {int needs_altsetting0; scalar_t__ needs_remote_wakeup; int condition; TYPE_6__* altsetting; TYPE_4__ dev; TYPE_2__* cur_altsetting; } ;
struct usb_driver {int (* disconnect ) (struct usb_interface*) ;int soft_unbind; } ;
struct usb_device {int dummy; } ;
struct device {int driver; } ;
struct TYPE_11__ {int bInterfaceNumber; } ;
struct TYPE_12__ {TYPE_5__ desc; } ;
struct TYPE_7__ {scalar_t__ bAlternateSetting; } ;
struct TYPE_8__ {TYPE_1__ desc; } ;


 scalar_t__ DPM_ON ;
 int USB_INTERFACE_UNBINDING ;
 int USB_INTERFACE_UNBOUND ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int mark_quiesced (struct usb_interface*) ;
 int stub1 (struct usb_interface*) ;
 struct usb_driver* to_usb_driver (int ) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 int usb_autoresume_device (struct usb_device*) ;
 int usb_autosuspend_device (struct usb_device*) ;
 int usb_cancel_queued_reset (struct usb_interface*) ;
 int usb_disable_interface (struct usb_device*,struct usb_interface*,int) ;
 int usb_enable_interface (struct usb_device*,struct usb_interface*,int) ;
 int usb_set_interface (struct usb_device*,int ,int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int usb_unlocked_disable_lpm (struct usb_device*) ;
 int usb_unlocked_enable_lpm (struct usb_device*) ;

__attribute__((used)) static int usb_unbind_interface(struct device *dev)
{
 struct usb_driver *driver = to_usb_driver(dev->driver);
 struct usb_interface *intf = to_usb_interface(dev);
 struct usb_device *udev;
 int error, r, lpm_disable_error;

 intf->condition = USB_INTERFACE_UNBINDING;


 udev = interface_to_usbdev(intf);
 error = usb_autoresume_device(udev);






 lpm_disable_error = usb_unlocked_disable_lpm(udev);




 if (!driver->soft_unbind)
  usb_disable_interface(udev, intf, 0);

 driver->disconnect(intf);
 usb_cancel_queued_reset(intf);







 if (intf->cur_altsetting->desc.bAlternateSetting == 0) {



  usb_enable_interface(udev, intf, 0);
 } else if (!error && intf->dev.power.status == DPM_ON) {
  r = usb_set_interface(udev, intf->altsetting[0].
    desc.bInterfaceNumber, 0);
  if (r < 0)
   intf->needs_altsetting0 = 1;
 } else {
  intf->needs_altsetting0 = 1;
 }
 usb_set_intfdata(intf, ((void*)0));

 intf->condition = USB_INTERFACE_UNBOUND;
 mark_quiesced(intf);
 intf->needs_remote_wakeup = 0;


 if (!lpm_disable_error)
  usb_unlocked_enable_lpm(udev);

 if (!error)
  usb_autosuspend_device(udev);

 return 0;
}

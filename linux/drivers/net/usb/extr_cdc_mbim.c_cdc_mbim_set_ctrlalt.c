
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct usbnet {struct driver_info* driver_info; int udev; } ;
struct TYPE_6__ {int driver; } ;
struct usb_interface {TYPE_3__ dev; TYPE_2__* cur_altsetting; } ;
struct usb_driver {int id_table; } ;
struct usb_device_id {scalar_t__ driver_info; } ;
struct driver_info {int description; } ;
struct TYPE_4__ {int bInterfaceNumber; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;


 int ENODEV ;
 int dev_dbg (TYPE_3__*,char*,int ) ;
 struct usb_driver* to_usb_driver (int ) ;
 struct usb_device_id* usb_match_id (struct usb_interface*,int ) ;
 int usb_set_interface (int ,int ,int ) ;

__attribute__((used)) static int cdc_mbim_set_ctrlalt(struct usbnet *dev, struct usb_interface *intf, u8 alt)
{
 struct usb_driver *driver = to_usb_driver(intf->dev.driver);
 const struct usb_device_id *id;
 struct driver_info *info;
 int ret;

 ret = usb_set_interface(dev->udev,
    intf->cur_altsetting->desc.bInterfaceNumber,
    alt);
 if (ret)
  return ret;

 id = usb_match_id(intf, driver->id_table);
 if (!id)
  return -ENODEV;

 info = (struct driver_info *)id->driver_info;
 if (info != dev->driver_info) {
  dev_dbg(&intf->dev, "driver_info updated to '%s'\n",
   info->description);
  dev->driver_info = info;
 }
 return 0;
}

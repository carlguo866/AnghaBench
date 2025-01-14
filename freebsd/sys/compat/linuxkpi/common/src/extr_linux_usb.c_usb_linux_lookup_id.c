
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device_id {int match_flags; scalar_t__ idVendor; scalar_t__ idProduct; scalar_t__ bcdDevice_lo; scalar_t__ bcdDevice_hi; int bDeviceClass; scalar_t__ bDeviceSubClass; scalar_t__ bDeviceProtocol; scalar_t__ bInterfaceClass; scalar_t__ bInterfaceSubClass; scalar_t__ bInterfaceProtocol; } ;
struct TYPE_2__ {scalar_t__ idVendor; scalar_t__ idProduct; scalar_t__ bcdDevice; int bDeviceClass; scalar_t__ bDeviceSubClass; scalar_t__ bDeviceProtocol; scalar_t__ bInterfaceClass; scalar_t__ bInterfaceSubClass; scalar_t__ bInterfaceProtocol; } ;
struct usb_attach_arg {TYPE_1__ info; } ;


 int USB_DEVICE_ID_MATCH_DEV_CLASS ;
 int USB_DEVICE_ID_MATCH_DEV_HI ;
 int USB_DEVICE_ID_MATCH_DEV_LO ;
 int USB_DEVICE_ID_MATCH_DEV_PROTOCOL ;
 int USB_DEVICE_ID_MATCH_DEV_SUBCLASS ;
 int USB_DEVICE_ID_MATCH_INT_CLASS ;
 int USB_DEVICE_ID_MATCH_INT_PROTOCOL ;
 int USB_DEVICE_ID_MATCH_INT_SUBCLASS ;
 int USB_DEVICE_ID_MATCH_PRODUCT ;
 int USB_DEVICE_ID_MATCH_VENDOR ;

__attribute__((used)) static const struct usb_device_id *
usb_linux_lookup_id(const struct usb_device_id *id, struct usb_attach_arg *uaa)
{
 if (id == ((void*)0)) {
  goto done;
 }





 for (; id->match_flags; id++) {

  if ((id->match_flags & USB_DEVICE_ID_MATCH_VENDOR) &&
      (id->idVendor != uaa->info.idVendor)) {
   continue;
  }
  if ((id->match_flags & USB_DEVICE_ID_MATCH_PRODUCT) &&
      (id->idProduct != uaa->info.idProduct)) {
   continue;
  }
  if ((id->match_flags & USB_DEVICE_ID_MATCH_DEV_LO) &&
      (id->bcdDevice_lo > uaa->info.bcdDevice)) {
   continue;
  }
  if ((id->match_flags & USB_DEVICE_ID_MATCH_DEV_HI) &&
      (id->bcdDevice_hi < uaa->info.bcdDevice)) {
   continue;
  }
  if ((id->match_flags & USB_DEVICE_ID_MATCH_DEV_CLASS) &&
      (id->bDeviceClass != uaa->info.bDeviceClass)) {
   continue;
  }
  if ((id->match_flags & USB_DEVICE_ID_MATCH_DEV_SUBCLASS) &&
      (id->bDeviceSubClass != uaa->info.bDeviceSubClass)) {
   continue;
  }
  if ((id->match_flags & USB_DEVICE_ID_MATCH_DEV_PROTOCOL) &&
      (id->bDeviceProtocol != uaa->info.bDeviceProtocol)) {
   continue;
  }
  if ((uaa->info.bDeviceClass == 0xFF) &&
      !(id->match_flags & USB_DEVICE_ID_MATCH_VENDOR) &&
      (id->match_flags & (USB_DEVICE_ID_MATCH_INT_CLASS |
      USB_DEVICE_ID_MATCH_INT_SUBCLASS |
      USB_DEVICE_ID_MATCH_INT_PROTOCOL))) {
   continue;
  }
  if ((id->match_flags & USB_DEVICE_ID_MATCH_INT_CLASS) &&
      (id->bInterfaceClass != uaa->info.bInterfaceClass)) {
   continue;
  }
  if ((id->match_flags & USB_DEVICE_ID_MATCH_INT_SUBCLASS) &&
      (id->bInterfaceSubClass != uaa->info.bInterfaceSubClass)) {
   continue;
  }
  if ((id->match_flags & USB_DEVICE_ID_MATCH_INT_PROTOCOL) &&
      (id->bInterfaceProtocol != uaa->info.bInterfaceProtocol)) {
   continue;
  }

  return (id);
 }

done:
 return (((void*)0));
}

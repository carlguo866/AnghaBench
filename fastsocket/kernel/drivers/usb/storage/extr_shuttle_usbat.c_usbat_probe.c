
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct us_data {char* transport_name; int max_lun; int transport_reset; int transport; } ;


 int usb_stor_CB_reset ;
 int usb_stor_probe1 (struct us_data**,struct usb_interface*,struct usb_device_id const*,int) ;
 int usb_stor_probe2 (struct us_data*) ;
 int usbat_flash_transport ;
 int usbat_unusual_dev_list ;
 struct usb_device_id const* usbat_usb_ids ;

__attribute__((used)) static int usbat_probe(struct usb_interface *intf,
    const struct usb_device_id *id)
{
 struct us_data *us;
 int result;

 result = usb_stor_probe1(&us, intf, id,
   (id - usbat_usb_ids) + usbat_unusual_dev_list);
 if (result)
  return result;




 us->transport_name = "Shuttle USBAT";
 us->transport = usbat_flash_transport;
 us->transport_reset = usb_stor_CB_reset;
 us->max_lun = 1;

 result = usb_stor_probe2(us);
 return result;
}

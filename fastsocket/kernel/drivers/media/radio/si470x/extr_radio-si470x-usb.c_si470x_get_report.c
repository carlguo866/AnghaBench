
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct si470x_device {TYPE_1__* intf; int usbdev; } ;
struct TYPE_2__ {int dev; } ;


 int HID_REQ_GET_REPORT ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int dev_warn (int *,char*,int) ;
 int usb_control_msg (int ,int ,int ,int,unsigned char,int,void*,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_timeout ;

__attribute__((used)) static int si470x_get_report(struct si470x_device *radio, void *buf, int size)
{
 unsigned char *report = (unsigned char *) buf;
 int retval;

 retval = usb_control_msg(radio->usbdev,
  usb_rcvctrlpipe(radio->usbdev, 0),
  HID_REQ_GET_REPORT,
  USB_TYPE_CLASS | USB_RECIP_INTERFACE | USB_DIR_IN,
  report[0], 2,
  buf, size, usb_timeout);

 if (retval < 0)
  dev_warn(&radio->intf->dev,
   "si470x_get_report: usb_control_msg returned %d\n",
   retval);
 return retval;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union at76_hwcfg {int dummy; } at76_hwcfg ;
struct usb_device {int dummy; } ;


 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (struct usb_device*,int ,int,int,int,int ,union at76_hwcfg*,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static inline int at76_get_hw_cfg(struct usb_device *udev,
      union at76_hwcfg *buf, int buf_size)
{
 return usb_control_msg(udev, usb_rcvctrlpipe(udev, 0), 0x33,
          USB_TYPE_VENDOR | USB_DIR_IN |
          USB_RECIP_INTERFACE, 0x0a02, 0,
          buf, buf_size, USB_CTRL_GET_TIMEOUT);
}

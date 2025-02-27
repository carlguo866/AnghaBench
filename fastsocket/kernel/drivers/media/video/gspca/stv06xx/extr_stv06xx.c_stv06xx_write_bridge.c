
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct usb_device {int dummy; } ;
struct TYPE_2__ {int* usb_buf; struct usb_device* dev; } ;
struct sd {TYPE_1__ gspca_dev; } ;
typedef int __u8 ;


 int D_CONF ;
 int PDEBUG (int ,char*,int,int,int) ;
 int STV06XX_URB_MSG_TIMEOUT ;
 int usb_control_msg (struct usb_device*,int ,int,int,int,int ,int*,int,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

int stv06xx_write_bridge(struct sd *sd, u16 address, u16 i2c_data)
{
 int err;
 struct usb_device *udev = sd->gspca_dev.dev;
 __u8 *buf = sd->gspca_dev.usb_buf;
 u8 len = (i2c_data > 0xff) ? 2 : 1;

 buf[0] = i2c_data & 0xff;
 buf[1] = (i2c_data >> 8) & 0xff;

 err = usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
         0x04, 0x40, address, 0, buf, len,
         STV06XX_URB_MSG_TIMEOUT);

 PDEBUG(D_CONF, "Written 0x%x to address 0x%x, status: %d",
        i2c_data, address, err);

 return (err < 0) ? err : 0;
}

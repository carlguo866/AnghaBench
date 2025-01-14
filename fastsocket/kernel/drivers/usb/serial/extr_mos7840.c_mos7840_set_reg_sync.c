
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {TYPE_1__* serial; } ;
struct usb_device {int dummy; } ;
typedef int __u16 ;
struct TYPE_2__ {struct usb_device* dev; } ;


 int MCS_WRREQ ;
 int MCS_WR_RTYPE ;
 int MOS_WDR_TIMEOUT ;
 int dbg (char*,int,int) ;
 int usb_control_msg (struct usb_device*,int ,int ,int ,int,int,int *,int ,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int mos7840_set_reg_sync(struct usb_serial_port *port, __u16 reg,
    __u16 val)
{
 struct usb_device *dev = port->serial->dev;
 val = val & 0x00ff;
 dbg("mos7840_set_reg_sync offset is %x, value %x", reg, val);

 return usb_control_msg(dev, usb_sndctrlpipe(dev, 0), MCS_WRREQ,
          MCS_WR_RTYPE, val, reg, ((void*)0), 0,
          MOS_WDR_TIMEOUT);
}

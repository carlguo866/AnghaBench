
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_interface {int dev; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;


 int dev_dbg (int *,char*,int) ;
 int zd1301_ctrl_msg (struct dvb_usb_device*,int*,int,int *,int ) ;

__attribute__((used)) static int zd1301_demod_wreg(void *reg_priv, u16 reg, u8 val)
{
 struct dvb_usb_device *d = reg_priv;
 struct usb_interface *intf = d->intf;
 int ret;
 u8 buf[7] = {0x07, 0x00, 0x03, 0x01,
       (reg >> 0) & 0xff, (reg >> 8) & 0xff, val};

 ret = zd1301_ctrl_msg(d, buf, 7, ((void*)0), 0);
 if (ret)
  goto err;

 return 0;
err:
 dev_dbg(&intf->dev, "failed=%d\n", ret);
 return ret;
}

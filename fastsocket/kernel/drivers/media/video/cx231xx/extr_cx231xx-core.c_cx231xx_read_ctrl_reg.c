
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct cx231xx {int state; int udev; } ;


 int DEV_DISCONNECTED ;
 int EINVAL ;
 int ENABLE_FOUR_BYTE ;
 int ENABLE_ONE_BYTE ;
 int ENABLE_THREE_BYTE ;
 int ENABLE_TWE_BYTE ;
 int ENODEV ;
 int HZ ;
 int URB_MAX_CTRL_SIZE ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int __usb_control_msg (struct cx231xx*,int,int,int,int,int ,char*,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

int cx231xx_read_ctrl_reg(struct cx231xx *dev, u8 req, u16 reg,
     char *buf, int len)
{
 u8 val = 0;
 int ret;
 int pipe = usb_rcvctrlpipe(dev->udev, 0);

 if (dev->state & DEV_DISCONNECTED)
  return -ENODEV;

 if (len > URB_MAX_CTRL_SIZE)
  return -EINVAL;

 switch (len) {
 case 1:
  val = ENABLE_ONE_BYTE;
  break;
 case 2:
  val = ENABLE_TWE_BYTE;
  break;
 case 3:
  val = ENABLE_THREE_BYTE;
  break;
 case 4:
  val = ENABLE_FOUR_BYTE;
  break;
 default:
  val = 0xFF;
 }

 if (val == 0xFF)
  return -EINVAL;

 ret = __usb_control_msg(dev, pipe, req,
         USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
         val, reg, buf, len, HZ);
 return ret;
}

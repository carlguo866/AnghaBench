
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gspca_dev {int* usb_buf; int dev; } ;


 int D_USBI ;
 int PDEBUG (int ,char*,int ,int) ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int err (char*,int) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int reg_read(struct gspca_dev *gspca_dev,
   u16 index)
{
 int ret;

 ret = usb_control_msg(gspca_dev->dev,
   usb_rcvctrlpipe(gspca_dev->dev, 0),
   0,
   USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   0,
   index,
   gspca_dev->usb_buf, 1,
   500);
 PDEBUG(D_USBI, "reg read i:%04x --> %02x",
  index, gspca_dev->usb_buf[0]);
 if (ret < 0) {
  err("reg_read err %d", ret);
  return ret;
 }
 return gspca_dev->usb_buf[0];
}

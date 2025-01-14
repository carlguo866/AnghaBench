
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_device {int dummy; } ;
struct gspca_dev {int usb_err; int * usb_buf; struct usb_device* dev; } ;


 int D_USBI ;
 int USB_BUF_SZ ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int ,int ,...) ;
 int memset (int *,int ,int ) ;
 int pr_err (char*,int) ;
 int usb_control_msg (struct usb_device*,int ,int,int,int,int ,int *,int,int) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static void reg_r(struct gspca_dev *gspca_dev,
   u16 index,
   int len)
{
 struct usb_device *dev = gspca_dev->dev;
 int ret;

 if (gspca_dev->usb_err < 0)
  return;
 ret = usb_control_msg(dev, usb_rcvctrlpipe(dev, 0),
   0x00,
   USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   0x00, index,
   gspca_dev->usb_buf, len, 500);
 if (ret < 0) {
  pr_err("reg_r err %d\n", ret);
  gspca_dev->usb_err = ret;




  memset(gspca_dev->usb_buf, 0, USB_BUF_SZ);
  return;
 }
 if (len == 1)
  gspca_dbg(gspca_dev, D_USBI, "GET 00 0000 %04x %02x\n",
     index, gspca_dev->usb_buf[0]);
 else
  gspca_dbg(gspca_dev, D_USBI, "GET 00 0000 %04x %02x %02x ..\n",
     index, gspca_dev->usb_buf[0],
     gspca_dev->usb_buf[1]);
}

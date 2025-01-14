
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int usb_err; int * usb_buf; int dev; } ;


 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int pr_err (char*,int ,int ,int) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int *,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static void reg_w(struct gspca_dev *gspca_dev,
  u8 index,
  u8 value)
{
 int ret;

 if (gspca_dev->usb_err < 0)
  return;
 gspca_dev->usb_buf[0] = value;
 ret = usb_control_msg(gspca_dev->dev,
   usb_sndctrlpipe(gspca_dev->dev, 0),
   0,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   0, index, gspca_dev->usb_buf, 1,
   500);
 if (ret < 0) {
  pr_err("reg_w() failed i: %02x v: %02x error %d\n",
         index, value, ret);
  gspca_dev->usb_err = ret;
 }
}

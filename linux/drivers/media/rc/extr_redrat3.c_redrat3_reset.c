
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;
struct redrat3_dev {struct device* dev; struct usb_device* udev; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int HZ ;
 int RR3_CPUCS_REG_ADDR ;
 int RR3_DRIVER_MAXLENS ;
 int RR3_IR_IO_LENGTH_FUZZ ;
 int RR3_IR_IO_MAX_LENGTHS ;
 int RR3_IR_IO_MIN_PAUSE ;
 int RR3_IR_IO_PERIODS_MF ;
 int RR3_RESET ;
 int RR3_SET_IR_PARAM ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int dev_dbg (struct device*,char*,int,...) ;
 int kfree (int*) ;
 int* kmalloc (size_t const,int ) ;
 int length_fuzz ;
 int minimum_pause ;
 int periods_measure_carrier ;
 int usb_control_msg (struct usb_device*,int,int ,int,int ,int ,int*,size_t const,int) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static void redrat3_reset(struct redrat3_dev *rr3)
{
 struct usb_device *udev = rr3->udev;
 struct device *dev = rr3->dev;
 int rc, rxpipe, txpipe;
 u8 *val;
 size_t const len = sizeof(*val);

 rxpipe = usb_rcvctrlpipe(udev, 0);
 txpipe = usb_sndctrlpipe(udev, 0);

 val = kmalloc(len, GFP_KERNEL);
 if (!val)
  return;

 *val = 0x01;
 rc = usb_control_msg(udev, rxpipe, RR3_RESET,
        USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_IN,
        RR3_CPUCS_REG_ADDR, 0, val, len, HZ * 25);
 dev_dbg(dev, "reset returned 0x%02x\n", rc);

 *val = length_fuzz;
 rc = usb_control_msg(udev, txpipe, RR3_SET_IR_PARAM,
        USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_OUT,
        RR3_IR_IO_LENGTH_FUZZ, 0, val, len, HZ * 25);
 dev_dbg(dev, "set ir parm len fuzz %d rc 0x%02x\n", *val, rc);

 *val = (65536 - (minimum_pause * 2000)) / 256;
 rc = usb_control_msg(udev, txpipe, RR3_SET_IR_PARAM,
        USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_OUT,
        RR3_IR_IO_MIN_PAUSE, 0, val, len, HZ * 25);
 dev_dbg(dev, "set ir parm min pause %d rc 0x%02x\n", *val, rc);

 *val = periods_measure_carrier;
 rc = usb_control_msg(udev, txpipe, RR3_SET_IR_PARAM,
        USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_OUT,
        RR3_IR_IO_PERIODS_MF, 0, val, len, HZ * 25);
 dev_dbg(dev, "set ir parm periods measure carrier %d rc 0x%02x", *val,
         rc);

 *val = RR3_DRIVER_MAXLENS;
 rc = usb_control_msg(udev, txpipe, RR3_SET_IR_PARAM,
        USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_OUT,
        RR3_IR_IO_MAX_LENGTHS, 0, val, len, HZ * 25);
 dev_dbg(dev, "set ir parm max lens %d rc 0x%02x\n", *val, rc);

 kfree(val);
}

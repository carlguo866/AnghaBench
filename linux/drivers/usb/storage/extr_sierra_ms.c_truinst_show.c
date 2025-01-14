
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct swoc_info {int rev; int LinuxSKU; int LinuxVer; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 scalar_t__ TRU_FORCE_MS ;
 int debug_swoc (struct device*,struct swoc_info*) ;
 int dev_dbg (struct device*,char*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct swoc_info*) ;
 struct swoc_info* kmalloc (int,int ) ;
 int sierra_get_swoc_info (struct usb_device*,struct swoc_info*) ;
 int snprintf (char*,int ,char*,...) ;
 scalar_t__ swi_tru_install ;
 struct usb_interface* to_usb_interface (struct device*) ;

__attribute__((used)) static ssize_t truinst_show(struct device *dev, struct device_attribute *attr,
   char *buf)
{
 struct swoc_info *swocInfo;
 struct usb_interface *intf = to_usb_interface(dev);
 struct usb_device *udev = interface_to_usbdev(intf);
 int result;
 if (swi_tru_install == TRU_FORCE_MS) {
  result = snprintf(buf, PAGE_SIZE, "Forced Mass Storage\n");
 } else {
  swocInfo = kmalloc(sizeof(struct swoc_info), GFP_KERNEL);
  if (!swocInfo) {
   snprintf(buf, PAGE_SIZE, "Error\n");
   return -ENOMEM;
  }
  result = sierra_get_swoc_info(udev, swocInfo);
  if (result < 0) {
   dev_dbg(dev, "SWIMS: failed SWoC query\n");
   kfree(swocInfo);
   snprintf(buf, PAGE_SIZE, "Error\n");
   return -EIO;
  }
  debug_swoc(dev, swocInfo);
  result = snprintf(buf, PAGE_SIZE,
   "REV=%02d SKU=%04X VER=%04X\n",
   swocInfo->rev,
   swocInfo->LinuxSKU,
   swocInfo->LinuxVer);
  kfree(swocInfo);
 }
 return result;
}

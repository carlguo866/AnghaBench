
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int authorized_default; } ;
struct usb_device {struct usb_bus* bus; } ;
struct usb_bus {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ENODEV ;
 struct usb_hcd* bus_to_hcd (struct usb_bus*) ;
 int sscanf (char const*,char*,unsigned int*) ;
 struct usb_device* to_usb_device (struct device*) ;

__attribute__((used)) static ssize_t usb_host_authorized_default_store(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t size)
{
 ssize_t result;
 unsigned val;
 struct usb_device *rh_usb_dev = to_usb_device(dev);
 struct usb_bus *usb_bus = rh_usb_dev->bus;
 struct usb_hcd *usb_hcd;

 if (usb_bus == ((void*)0))
  return -ENODEV;
 usb_hcd = bus_to_hcd(usb_bus);
 result = sscanf(buf, "%u\n", &val);
 if (result == 1) {
  usb_hcd->authorized_default = val? 1 : 0;
  result = size;
 }
 else
  result = -EINVAL;
 return result;
}

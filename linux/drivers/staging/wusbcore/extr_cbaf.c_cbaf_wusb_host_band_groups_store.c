
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cbaf {int host_band_groups; } ;
typedef int ssize_t ;


 int EINVAL ;
 int sscanf (char const*,char*,int *) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct cbaf* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t cbaf_wusb_host_band_groups_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t size)
{
 ssize_t result;
 struct usb_interface *iface = to_usb_interface(dev);
 struct cbaf *cbaf = usb_get_intfdata(iface);
 u16 band_groups = 0;

 result = sscanf(buf, "%04hx", &band_groups);
 if (result != 1)
  return -EINVAL;

 cbaf->host_band_groups = band_groups;

 return size;
}

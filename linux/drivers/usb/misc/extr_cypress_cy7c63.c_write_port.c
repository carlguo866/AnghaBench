
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cypress {TYPE_1__* udev; } ;
typedef int ssize_t ;
struct TYPE_2__ {int dev; } ;


 int CYPRESS_WRITE_PORT ;
 int EINVAL ;
 int dev_dbg (int *,char*,int) ;
 int sscanf (char const*,char*,int*) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct cypress* usb_get_intfdata (struct usb_interface*) ;
 int vendor_command (struct cypress*,int ,int,unsigned char) ;

__attribute__((used)) static ssize_t write_port(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t count,
     int port_num, int write_id)
{
 int value = -1;
 int result = 0;

 struct usb_interface *intf = to_usb_interface(dev);
 struct cypress *cyp = usb_get_intfdata(intf);

 dev_dbg(&cyp->udev->dev, "WRITE_PORT%d called\n", port_num);


 if (sscanf(buf, "%d", &value) < 1) {
  result = -EINVAL;
  goto error;
 }
 if (value < 0 || value > 255) {
  result = -EINVAL;
  goto error;
 }

 result = vendor_command(cyp, CYPRESS_WRITE_PORT, write_id,
    (unsigned char)value);

 dev_dbg(&cyp->udev->dev, "Result of vendor_command: %d\n\n", result);
error:
 return result < 0 ? result : count;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;
struct dvb_usb_device_properties {int dummy; } ;
struct dvb_usb_device_description {int dummy; } ;


 int EIO ;
 int ENOMEM ;
 scalar_t__ FW_BULKOUT_SIZE ;
 int FW_CONFIG ;
 int GFP_KERNEL ;
 int af9005_boot_packet (struct usb_device*,int ,int*,int*,scalar_t__) ;
 int deb_info (char*,int) ;
 int kfree (int*) ;
 int* kmalloc (scalar_t__,int ) ;

__attribute__((used)) static int af9005_identify_state(struct usb_device *udev,
     struct dvb_usb_device_properties *props,
     struct dvb_usb_device_description **desc,
     int *cold)
{
 int ret;
 u8 reply, *buf;

 buf = kmalloc(FW_BULKOUT_SIZE + 2, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 ret = af9005_boot_packet(udev, FW_CONFIG, &reply,
     buf, FW_BULKOUT_SIZE + 2);
 if (ret)
  goto err;
 deb_info("result of FW_CONFIG in identify state %d\n", reply);
 if (reply == 0x01)
  *cold = 1;
 else if (reply == 0x02)
  *cold = 0;
 else
  return -EIO;
 deb_info("Identify state cold = %d\n", *cold);

err:
 kfree(buf);
 return ret;
}

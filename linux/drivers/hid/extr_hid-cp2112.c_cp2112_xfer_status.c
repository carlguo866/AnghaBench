
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hid_device {int dummy; } ;
struct cp2112_device {int xfer_status; int xfer_avail; struct hid_device* hdev; } ;


 int CP2112_TRANSFER_STATUS_REQUEST ;
 int HID_OUTPUT_REPORT ;
 int atomic_set (int *,int ) ;
 int cp2112_hid_output (struct hid_device*,int*,int,int ) ;
 int cp2112_wait (struct cp2112_device*,int *) ;
 int hid_warn (struct hid_device*,char*,int) ;

__attribute__((used)) static int cp2112_xfer_status(struct cp2112_device *dev)
{
 struct hid_device *hdev = dev->hdev;
 u8 buf[2];
 int ret;

 buf[0] = CP2112_TRANSFER_STATUS_REQUEST;
 buf[1] = 0x01;
 atomic_set(&dev->xfer_avail, 0);

 ret = cp2112_hid_output(hdev, buf, 2, HID_OUTPUT_REPORT);
 if (ret < 0) {
  hid_warn(hdev, "Error requesting status: %d\n", ret);
  return ret;
 }

 ret = cp2112_wait(dev, &dev->xfer_avail);
 if (ret)
  return ret;

 return dev->xfer_status;
}

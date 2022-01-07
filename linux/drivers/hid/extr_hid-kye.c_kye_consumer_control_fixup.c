
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;
typedef int __u8 ;


 int hid_info (struct hid_device*,char*,char const*) ;

__attribute__((used)) static __u8 *kye_consumer_control_fixup(struct hid_device *hdev, __u8 *rdesc,
  unsigned int *rsize, int offset, const char *device_name) {





 if (*rsize >= offset + 31 &&

     rdesc[offset] == 0x05 && rdesc[offset + 1] == 0x0c &&

     rdesc[offset + 2] == 0x09 && rdesc[offset + 3] == 0x01 &&

     rdesc[offset + 10] == 0x2a && rdesc[offset + 12] > 0x2f) {
  hid_info(hdev, "fixing up %s report descriptor\n", device_name);
  rdesc[offset + 12] = 0x2f;
 }
 return rdesc;
}

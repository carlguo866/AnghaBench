
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct adapter {int dummy; } ;


 scalar_t__ EFUSE_CTRL ;
 int usb_read8 (struct adapter*,scalar_t__) ;
 int usb_write8 (struct adapter*,scalar_t__,int) ;

u8 efuse_OneByteRead(struct adapter *pAdapter, u16 addr, u8 *data)
{
 u8 tmpidx = 0;
 u8 result;

 usb_write8(pAdapter, EFUSE_CTRL + 1, (u8)(addr & 0xff));
 usb_write8(pAdapter, EFUSE_CTRL + 2, ((u8)((addr >> 8) & 0x03)) |
     (usb_read8(pAdapter, EFUSE_CTRL + 2) & 0xFC));

 usb_write8(pAdapter, EFUSE_CTRL + 3, 0x72);

 while (!(0x80 & usb_read8(pAdapter, EFUSE_CTRL + 3)) && (tmpidx < 100))
  tmpidx++;
 if (tmpidx < 100) {
  *data = usb_read8(pAdapter, EFUSE_CTRL);
  result = 1;
 } else {
  *data = 0xff;
  result = 0;
 }
 return result;
}

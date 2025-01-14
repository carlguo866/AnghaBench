
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rt2x00_dev {int dummy; } ;


 int EACCES ;
 int REGISTER_BUSY_DELAY ;
 unsigned int REGISTER_USB_BUSY_COUNT ;
 int rt2500usb_bbp_read (struct rt2x00_dev*,int ) ;
 int rt2x00_err (struct rt2x00_dev*,char*) ;
 int udelay (int ) ;

__attribute__((used)) static int rt2500usb_wait_bbp_ready(struct rt2x00_dev *rt2x00dev)
{
 unsigned int i;
 u8 value;

 for (i = 0; i < REGISTER_USB_BUSY_COUNT; i++) {
  value = rt2500usb_bbp_read(rt2x00dev, 0);
  if ((value != 0xff) && (value != 0x00))
   return 0;
  udelay(REGISTER_BUSY_DELAY);
 }

 rt2x00_err(rt2x00dev, "BBP register access failed, aborting\n");
 return -EACCES;
}

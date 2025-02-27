
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_field32 {int dummy; } ;
struct rt2x00_dev {int flags; } ;


 int DEVICE_STATE_PRESENT ;
 int ENODEV ;
 unsigned int REGISTER_BUSY_COUNT ;
 int REGISTER_BUSY_DELAY ;
 int rt2x00_err (struct rt2x00_dev*,char*,unsigned int const,int ) ;
 int rt2x00_get_field32 (int ,struct rt2x00_field32 const) ;
 int rt2x00usb_register_read_lock (struct rt2x00_dev*,unsigned int const,int *) ;
 int test_bit (int ,int *) ;
 int udelay (int ) ;

int rt2x00usb_regbusy_read(struct rt2x00_dev *rt2x00dev,
      const unsigned int offset,
      const struct rt2x00_field32 field,
      u32 *reg)
{
 unsigned int i;

 if (!test_bit(DEVICE_STATE_PRESENT, &rt2x00dev->flags))
  return -ENODEV;

 for (i = 0; i < REGISTER_BUSY_COUNT; i++) {
  rt2x00usb_register_read_lock(rt2x00dev, offset, reg);
  if (!rt2x00_get_field32(*reg, field))
   return 1;
  udelay(REGISTER_BUSY_DELAY);
 }

 rt2x00_err(rt2x00dev, "Indirect register access failed: offset=0x%.08x, value=0x%.08x\n",
     offset, *reg);
 *reg = ~0;

 return 0;
}

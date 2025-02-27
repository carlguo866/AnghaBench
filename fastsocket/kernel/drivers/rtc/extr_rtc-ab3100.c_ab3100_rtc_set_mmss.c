
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct device {int dummy; } ;
struct ab3100 {int dummy; } ;
typedef unsigned char fat_time ;


 int AB3100_RTC ;
 int AB3100_RTC_CLOCK_RATE ;
 int AB3100_TI0 ;
 int AB3100_TI1 ;
 int AB3100_TI2 ;
 int AB3100_TI3 ;
 int AB3100_TI4 ;
 int AB3100_TI5 ;
 int ab3100_mask_and_set_register_interruptible (struct ab3100*,int ,int,int) ;
 int ab3100_set_register_interruptible (struct ab3100*,int ,unsigned char) ;
 struct ab3100* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int ab3100_rtc_set_mmss(struct device *dev, unsigned long secs)
{
 struct ab3100 *ab3100_data = dev_get_drvdata(dev);
 u8 regs[] = {AB3100_TI0, AB3100_TI1, AB3100_TI2,
       AB3100_TI3, AB3100_TI4, AB3100_TI5};
 unsigned char buf[6];
 u64 fat_time = (u64) secs * AB3100_RTC_CLOCK_RATE * 2;
 int err = 0;
 int i;

 buf[0] = (fat_time) & 0xFF;
 buf[1] = (fat_time >> 8) & 0xFF;
 buf[2] = (fat_time >> 16) & 0xFF;
 buf[3] = (fat_time >> 24) & 0xFF;
 buf[4] = (fat_time >> 32) & 0xFF;
 buf[5] = (fat_time >> 40) & 0xFF;

 for (i = 0; i < 6; i++) {
  err = ab3100_set_register_interruptible(ab3100_data,
       regs[i], buf[i]);
  if (err)
   return err;
 }


 return ab3100_mask_and_set_register_interruptible(ab3100_data,
         AB3100_RTC,
         0xFE, 0x01);

}

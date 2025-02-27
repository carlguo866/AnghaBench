
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char BIT_RTC_INTERRUPTS_REG_EVERY_M ;
 int REG_RTC_INTERRUPTS_REG ;
 unsigned char rtc_irq_bits ;
 int twl4030_rtc_write_u8 (unsigned char,int ) ;

__attribute__((used)) static int set_rtc_irq_bit(unsigned char bit)
{
 unsigned char val;
 int ret;

 val = rtc_irq_bits | bit;
 val &= ~BIT_RTC_INTERRUPTS_REG_EVERY_M;
 ret = twl4030_rtc_write_u8(val, REG_RTC_INTERRUPTS_REG);
 if (ret == 0)
  rtc_irq_bits = val;

 return ret;
}

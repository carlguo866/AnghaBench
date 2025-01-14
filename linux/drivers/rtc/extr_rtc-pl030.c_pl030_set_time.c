
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct pl030_rtc {scalar_t__ base; } ;
struct device {int dummy; } ;


 scalar_t__ RTC_LR ;
 struct pl030_rtc* dev_get_drvdata (struct device*) ;
 int rtc_tm_to_time (struct rtc_time*,unsigned long*) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int pl030_set_time(struct device *dev, struct rtc_time *tm)
{
 struct pl030_rtc *rtc = dev_get_drvdata(dev);
 unsigned long time;
 int ret;

 ret = rtc_tm_to_time(tm, &time);
 if (ret == 0)
  writel(time + 1, rtc->base + RTC_LR);

 return ret;
}

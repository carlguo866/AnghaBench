
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_wkalrm {int enabled; int time; } ;
struct pl031_local {scalar_t__ base; } ;
struct device {int dummy; } ;


 scalar_t__ RTC_MIS ;
 scalar_t__ RTC_MR ;
 int __raw_writel (int,scalar_t__) ;
 struct pl031_local* dev_get_drvdata (struct device*) ;
 int rtc_tm_to_time (int *,unsigned long*) ;

__attribute__((used)) static int pl031_set_alarm(struct device *dev, struct rtc_wkalrm *alarm)
{
 struct pl031_local *ldata = dev_get_drvdata(dev);
 unsigned long time;

 rtc_tm_to_time(&alarm->time, &time);

 __raw_writel(time, ldata->base + RTC_MR);
 __raw_writel(!alarm->enabled, ldata->base + RTC_MIS);

 return 0;
}

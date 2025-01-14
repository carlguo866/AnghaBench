
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct rtc_wkalrm {struct rtc_time time; } ;
struct device {int dummy; } ;
struct da9055_rtc {int da9055; } ;


 int da9055_rtc_enable_alarm (struct da9055_rtc*,int) ;
 int da9055_set_alarm (int ,struct rtc_time*) ;
 struct da9055_rtc* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int da9055_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 int ret;
 struct rtc_time *tm = &alrm->time;
 struct da9055_rtc *rtc = dev_get_drvdata(dev);

 ret = da9055_rtc_enable_alarm(rtc, 0);
 if (ret < 0)
  return ret;

 ret = da9055_set_alarm(rtc->da9055, tm);
 if (ret)
  return ret;

 ret = da9055_rtc_enable_alarm(rtc, 1);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_rtc {int lock; scalar_t__ regbase; } ;
struct rtc_time {scalar_t__ tm_mon; void* tm_mday; void* tm_wday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct rtc_wkalrm {int enabled; struct rtc_time time; } ;
struct device {int dummy; } ;


 scalar_t__ RCR1 ;
 int RCR1_AIE ;
 int RDAYAR ;
 int RHRAR ;
 int RMINAR ;
 int RMONAR ;
 int RSECAR ;
 int RWKAR ;
 struct sh_rtc* dev_get_drvdata (struct device*) ;
 int readb (scalar_t__) ;
 void* sh_rtc_read_alarm_value (struct sh_rtc*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int sh_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *wkalrm)
{
 struct sh_rtc *rtc = dev_get_drvdata(dev);
 struct rtc_time *tm = &wkalrm->time;

 spin_lock_irq(&rtc->lock);

 tm->tm_sec = sh_rtc_read_alarm_value(rtc, RSECAR);
 tm->tm_min = sh_rtc_read_alarm_value(rtc, RMINAR);
 tm->tm_hour = sh_rtc_read_alarm_value(rtc, RHRAR);
 tm->tm_wday = sh_rtc_read_alarm_value(rtc, RWKAR);
 tm->tm_mday = sh_rtc_read_alarm_value(rtc, RDAYAR);
 tm->tm_mon = sh_rtc_read_alarm_value(rtc, RMONAR);
 if (tm->tm_mon > 0)
  tm->tm_mon -= 1;

 wkalrm->enabled = (readb(rtc->regbase + RCR1) & RCR1_AIE) ? 1 : 0;

 spin_unlock_irq(&rtc->lock);

 return 0;
}

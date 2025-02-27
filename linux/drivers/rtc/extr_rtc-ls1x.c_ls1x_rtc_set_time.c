
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; int tm_year; } ;
struct device {int dummy; } ;


 int ETIMEDOUT ;
 int LS1X_DAY_OFFSET ;
 int LS1X_HOUR_OFFSET ;
 int LS1X_MIN_OFFSET ;
 int LS1X_MONTH_OFFSET ;
 int LS1X_SEC_OFFSET ;
 int SYS_CNTRL_TS ;
 int SYS_COUNTER_CNTRL ;
 int SYS_TOYWRITE0 ;
 int SYS_TOYWRITE1 ;
 int dev_err (struct device*,char*) ;
 int readl (int ) ;
 int usleep_range (int,int) ;
 int writel (unsigned long,int ) ;

__attribute__((used)) static int ls1x_rtc_set_time(struct device *dev, struct rtc_time *rtm)
{
 unsigned long v, t, c;
 int ret = -ETIMEDOUT;

 v = ((rtm->tm_mon + 1) << LS1X_MONTH_OFFSET)
  | (rtm->tm_mday << LS1X_DAY_OFFSET)
  | (rtm->tm_hour << LS1X_HOUR_OFFSET)
  | (rtm->tm_min << LS1X_MIN_OFFSET)
  | (rtm->tm_sec << LS1X_SEC_OFFSET);

 writel(v, SYS_TOYWRITE0);
 c = 0x10000;

 while ((readl(SYS_COUNTER_CNTRL) & SYS_CNTRL_TS) && --c)
  usleep_range(1000, 3000);

 if (!c) {
  dev_err(dev, "set time timeout!\n");
  goto err;
 }

 t = rtm->tm_year + 1900;
 writel(t, SYS_TOYWRITE1);
 c = 0x10000;
 while ((readl(SYS_COUNTER_CNTRL) & SYS_CNTRL_TS) && --c)
  usleep_range(1000, 3000);

 if (!c) {
  dev_err(dev, "set time timeout!\n");
  goto err;
 }
 return 0;
err:
 return ret;
}

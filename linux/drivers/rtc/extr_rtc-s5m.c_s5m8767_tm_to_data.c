
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_wday; int tm_mday; int tm_mon; int tm_year; } ;


 int EINVAL ;
 int HOUR_PM_MASK ;
 size_t RTC_DATE ;
 size_t RTC_HOUR ;
 size_t RTC_MIN ;
 size_t RTC_MONTH ;
 size_t RTC_SEC ;
 size_t RTC_WEEKDAY ;
 size_t RTC_YEAR1 ;
 int pr_err (char*,int) ;

__attribute__((used)) static int s5m8767_tm_to_data(struct rtc_time *tm, u8 *data)
{
 data[RTC_SEC] = tm->tm_sec;
 data[RTC_MIN] = tm->tm_min;

 if (tm->tm_hour >= 12)
  data[RTC_HOUR] = tm->tm_hour | HOUR_PM_MASK;
 else
  data[RTC_HOUR] = tm->tm_hour & ~HOUR_PM_MASK;

 data[RTC_WEEKDAY] = 1 << tm->tm_wday;
 data[RTC_DATE] = tm->tm_mday;
 data[RTC_MONTH] = tm->tm_mon + 1;
 data[RTC_YEAR1] = tm->tm_year > 100 ? (tm->tm_year - 100) : 0;

 if (tm->tm_year < 100) {
  pr_err("RTC cannot handle the year %d\n",
         1900 + tm->tm_year);
  return -EINVAL;
 } else {
  return 0;
 }
}

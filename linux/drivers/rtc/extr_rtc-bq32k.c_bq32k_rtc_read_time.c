
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {void* tm_year; void* tm_mon; void* tm_wday; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct device {int dummy; } ;
struct bq32k_regs {int minutes; int seconds; int cent_hours; int date; int day; int month; int years; } ;
typedef int regs ;


 int BQ32K_CENT ;
 int BQ32K_HOURS_MASK ;
 int BQ32K_MINUTES_MASK ;
 int BQ32K_OF ;
 int BQ32K_SECONDS_MASK ;
 int EINVAL ;
 void* bcd2bin (int) ;
 int bq32k_read (struct device*,struct bq32k_regs*,int ,int) ;

__attribute__((used)) static int bq32k_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct bq32k_regs regs;
 int error;

 error = bq32k_read(dev, &regs, 0, sizeof(regs));
 if (error)
  return error;





 if (regs.minutes & BQ32K_OF)
  return -EINVAL;

 tm->tm_sec = bcd2bin(regs.seconds & BQ32K_SECONDS_MASK);
 tm->tm_min = bcd2bin(regs.minutes & BQ32K_MINUTES_MASK);
 tm->tm_hour = bcd2bin(regs.cent_hours & BQ32K_HOURS_MASK);
 tm->tm_mday = bcd2bin(regs.date);
 tm->tm_wday = bcd2bin(regs.day) - 1;
 tm->tm_mon = bcd2bin(regs.month) - 1;
 tm->tm_year = bcd2bin(regs.years) +
    ((regs.cent_hours & BQ32K_CENT) ? 100 : 0);

 return 0;
}

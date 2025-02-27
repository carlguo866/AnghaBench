
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tm ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
typedef scalar_t__ os_time_t ;


 scalar_t__ mktime (struct tm*) ;
 int os_memset (struct tm*,int ,int) ;

int os_mktime(int year, int month, int day, int hour, int min, int sec,
       os_time_t *t)
{
 struct tm tm;

 if (year < 1970 || month < 1 || month > 12 || day < 1 || day > 31 ||
     hour < 0 || hour > 23 || min < 0 || min > 59 || sec < 0 ||
     sec > 60)
  return -1;

 os_memset(&tm, 0, sizeof(tm));
 tm.tm_year = year - 1900;
 tm.tm_mon = month - 1;
 tm.tm_mday = day;
 tm.tm_hour = hour;
 tm.tm_min = min;
 tm.tm_sec = sec;

 *t = (os_time_t) mktime(&tm);
 return 0;
}

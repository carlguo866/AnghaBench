
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; int tm_isdst; } ;


 int mktime (struct tm*) ;

__attribute__((used)) static time_t
get_time(int ttime)
{
  struct tm tm;
  tm.tm_sec = 2 * (ttime & 0x1f);
  tm.tm_min = (ttime >> 5) & 0x3f;
  tm.tm_hour = (ttime >> 11) & 0x1f;
  tm.tm_mday = (ttime >> 16) & 0x1f;
  tm.tm_mon = ((ttime >> 21) & 0x0f) - 1;
  tm.tm_year = ((ttime >> 25) & 0x7f) + 80;
  tm.tm_isdst = -1;
  return mktime(&tm);
}

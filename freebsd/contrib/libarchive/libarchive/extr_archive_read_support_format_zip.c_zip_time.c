
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ts ;
typedef int time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; int tm_isdst; } ;


 int memset (struct tm*,int ,int) ;
 int mktime (struct tm*) ;

__attribute__((used)) static time_t
zip_time(const char *p)
{
 int msTime, msDate;
 struct tm ts;

 msTime = (0xff & (unsigned)p[0]) + 256 * (0xff & (unsigned)p[1]);
 msDate = (0xff & (unsigned)p[2]) + 256 * (0xff & (unsigned)p[3]);

 memset(&ts, 0, sizeof(ts));
 ts.tm_year = ((msDate >> 9) & 0x7f) + 80;
 ts.tm_mon = ((msDate >> 5) & 0x0f) - 1;
 ts.tm_mday = msDate & 0x1f;
 ts.tm_hour = (msTime >> 11) & 0x1f;
 ts.tm_min = (msTime >> 5) & 0x3f;
 ts.tm_sec = (msTime << 1) & 0x3e;
 ts.tm_isdst = -1;
 return mktime(&ts);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {size_t tm_wday; int tm_mday; size_t tm_mon; int tm_year; int tm_hour; int tm_min; int tm_sec; } ;
typedef int apr_time_t ;


 struct tm* gmtime (int *) ;
 char** month_snames ;
 int sprintf (char*,char*,char const* const,int,char*,int,int,int,int) ;

__attribute__((used)) static void gm_timestr_822(char *ts, apr_time_t sec)
{
    static const char *const days[7]=
        {"Sun","Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};
    struct tm *tms;
    time_t ls = (time_t)sec;

    tms = gmtime(&ls);

    sprintf(ts, "%s, %.2d %s %d %.2d:%.2d:%.2d GMT", days[tms->tm_wday],
            tms->tm_mday, month_snames[tms->tm_mon], tms->tm_year + 1900,
            tms->tm_hour, tms->tm_min, tms->tm_sec);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_mday; int tm_mon; int tm_year; int tm_hour; int tm_min; int tm_sec; } ;


 int H2O_TIMESTR_LOG_LEN ;
 int assert (int) ;
 int calc_gmt_offset (int ,struct tm*) ;
 int localtime_r (int *,struct tm*) ;
 int sprintf (char*,char*,int,char*,int,int,int,int,int,int,int) ;

void h2o_time2str_log(char *buf, time_t time)
{
    struct tm localt;
    localtime_r(&time, &localt);
    int gmt_off = calc_gmt_offset(time, &localt);
    int gmt_sign;

    if (gmt_off >= 0) {
        gmt_sign = '+';
    } else {
        gmt_off = -gmt_off;
        gmt_sign = '-';
    }

    int len = sprintf(buf, "%02d/%s/%d:%02d:%02d:%02d %c%02d%02d", localt.tm_mday,
                      ("Jan\0Feb\0Mar\0Apr\0May\0Jun\0Jul\0Aug\0Sep\0Oct\0Nov\0Dec\0") + localt.tm_mon * 4, localt.tm_year + 1900,
                      localt.tm_hour, localt.tm_min, localt.tm_sec, gmt_sign, gmt_off / 60, gmt_off % 60);
    assert(len == H2O_TIMESTR_LOG_LEN);
}

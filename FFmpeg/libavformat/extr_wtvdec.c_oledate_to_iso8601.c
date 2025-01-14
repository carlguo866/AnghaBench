
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double time_t ;
struct tm {int dummy; } ;
typedef int int64_t ;


 double av_int2double (int ) ;
 struct tm* gmtime_r (double*,struct tm*) ;
 int strftime (char*,int,char*,struct tm*) ;

__attribute__((used)) static int oledate_to_iso8601(char *buf, int buf_size, int64_t value)
{
    time_t t = (av_int2double(value) - 25569.0) * 86400;
    struct tm tmbuf;
    struct tm *tm= gmtime_r(&t, &tmbuf);
    if (!tm)
        return -1;
    if (!strftime(buf, buf_size, "%Y-%m-%d %H:%M:%S", tm))
        return -1;
    return 0;
}

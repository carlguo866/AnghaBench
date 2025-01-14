
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int AV_TIME_BASE ;
 double strtod (char const*,char**) ;
 int strtol (char const*,char**,int) ;

__attribute__((used)) static int str_to_time(const char *str, int64_t *rtime)
{
    const char *cur = str;
    char *end;
    int hours, minutes;
    double seconds = 0;

    if (*cur < '0' || *cur > '9')
        return 0;
    hours = strtol(cur, &end, 10);
    if (end == cur || *end != ':' || end[1] < '0' || end[1] > '9')
        return 0;
    cur = end + 1;
    minutes = strtol(cur, &end, 10);
    if (end == cur)
        return 0;
    cur = end;
    if (*end == ':'){
        seconds = strtod(cur + 1, &end);
        if (end > cur + 1)
            cur = end;
    }
    *rtime = (hours * 3600LL + minutes * 60LL + seconds) * AV_TIME_BASE;
    return cur - str;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
typedef int AVFilterContext ;
typedef int AVBPrint ;


 int av_bprint_strftime (int *,char const*,struct tm*) ;
 struct tm* gmtime_r (int *,struct tm*) ;
 int localtime_r (int *,struct tm*) ;
 int time (int *) ;

__attribute__((used)) static int func_strftime(AVFilterContext *ctx, AVBPrint *bp,
                         char *fct, unsigned argc, char **argv, int tag)
{
    const char *fmt = argc ? argv[0] : "%Y-%m-%d %H:%M:%S";
    time_t now;
    struct tm tm;

    time(&now);
    if (tag == 'L')
        localtime_r(&now, &tm);
    else
        tm = *gmtime_r(&now, &tm);
    av_bprint_strftime(bp, fmt, &tm);
    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double d; } ;
struct unit_value {int unit; TYPE_1__ val; } ;
typedef double int64_t ;
typedef int buf ;
typedef int WriterContext ;
typedef int AVRational ;


 double AV_NOPTS_VALUE ;
 int PRINT_STRING_OPT ;
 double av_q2d (int const) ;
 int unit_second_str ;
 int value_string (char*,int,struct unit_value) ;
 int writer_print_string (int *,char const*,char*,int ) ;

__attribute__((used)) static void writer_print_time(WriterContext *wctx, const char *key,
                              int64_t ts, const AVRational *time_base, int is_duration)
{
    char buf[128];

    if ((!is_duration && ts == AV_NOPTS_VALUE) || (is_duration && ts == 0)) {
        writer_print_string(wctx, key, "N/A", PRINT_STRING_OPT);
    } else {
        double d = ts * av_q2d(*time_base);
        struct unit_value uv;
        uv.val.d = d;
        uv.unit = unit_second_str;
        value_string(buf, sizeof(buf), uv);
        writer_print_string(wctx, key, buf, 0);
    }
}

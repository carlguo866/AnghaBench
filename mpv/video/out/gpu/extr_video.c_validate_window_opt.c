
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_log {int dummy; } ;
struct filter_window {int dummy; } ;
struct bstr {int dummy; } ;
typedef int s ;
typedef int m_option_t ;
struct TYPE_2__ {scalar_t__ name; } ;


 char* BSTR_P (struct bstr) ;
 int M_OPT_EXIT ;
 int M_OPT_INVALID ;
 scalar_t__ bstr_equals0 (struct bstr,char*) ;
 int mp_fatal (struct mp_log*,char*,char*) ;
 TYPE_1__* mp_filter_windows ;
 struct filter_window* mp_find_filter_window (char*) ;
 int mp_info (struct mp_log*,char*,...) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int validate_window_opt(struct mp_log *log, const m_option_t *opt,
                               struct bstr name, struct bstr param)
{
    char s[20] = {0};
    int r = 1;
    if (bstr_equals0(param, "help")) {
        r = M_OPT_EXIT;
    } else {
        snprintf(s, sizeof(s), "%.*s", BSTR_P(param));
        const struct filter_window *window = mp_find_filter_window(s);
        if (!window)
            r = M_OPT_INVALID;
    }
    if (r < 1) {
        mp_info(log, "Available windows:\n");
        for (int n = 0; mp_filter_windows[n].name; n++)
            mp_info(log, "    %s\n", mp_filter_windows[n].name);
        if (s[0])
            mp_fatal(log, "No window named '%s' found!\n", s);
    }
    return r;
}

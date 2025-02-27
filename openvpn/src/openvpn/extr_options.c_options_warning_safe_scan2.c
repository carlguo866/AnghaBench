
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;


 int OPTION_PARM_SIZE ;
 scalar_t__ buf_parse (struct buffer*,int const,char*,int ) ;
 int gc_free (struct gc_arena*) ;
 char* gc_malloc (int ,int,struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int msg (int const,char*,char const*,char const*,char const*,char const*,char const*) ;
 char* options_warning_extract_parm1 (char const*,struct gc_arena*) ;
 char const* safe_print (char const*,struct gc_arena*) ;
 int strcmp (char const*,char const*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strprefix (char const*,char*) ;

__attribute__((used)) static void
options_warning_safe_scan2(const int msglevel,
                           const int delim,
                           const bool report_inconsistent,
                           const char *p1,
                           const struct buffer *b2_src,
                           const char *b1_name,
                           const char *b2_name)
{




    if (strprefix(p1, "key-method ")
        || strprefix(p1, "keydir ")
        || strprefix(p1, "proto ")
        || strprefix(p1, "tls-auth ")
        || strprefix(p1, "tun-ipv6"))
    {
        return;
    }

    if (strlen(p1) > 0)
    {
        struct gc_arena gc = gc_new();
        struct buffer b2 = *b2_src;
        const char *p1_prefix = options_warning_extract_parm1(p1, &gc);
        char *p2 = gc_malloc(OPTION_PARM_SIZE, 0, &gc);

        while (buf_parse(&b2, delim, p2, OPTION_PARM_SIZE))
        {
            if (strlen(p2))
            {
                const char *p2_prefix = options_warning_extract_parm1(p2, &gc);

                if (!strcmp(p1, p2))
                {
                    goto done;
                }
                if (!strcmp(p1_prefix, p2_prefix))
                {
                    if (report_inconsistent)
                    {
                        msg(msglevel, "WARNING: '%s' is used inconsistently, %s='%s', %s='%s'",
                            safe_print(p1_prefix, &gc),
                            b1_name,
                            safe_print(p1, &gc),
                            b2_name,
                            safe_print(p2, &gc));
                    }
                    goto done;
                }
            }
        }

        msg(msglevel, "WARNING: '%s' is present in %s config but missing in %s config, %s='%s'",
            safe_print(p1_prefix, &gc),
            b1_name,
            b2_name,
            b1_name,
            safe_print(p1, &gc));

done:
        gc_free(&gc);
    }
}

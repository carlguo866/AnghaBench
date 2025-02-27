
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;
struct m_option {int flags; int max; int min; struct m_opt_choice_alternatives* priv; } ;
struct m_opt_choice_alternatives {char* name; } ;


 int M_OPT_MAX ;
 int M_OPT_MIN ;
 int mp_info (struct mp_log*,char*,char*,...) ;

__attribute__((used)) static void print_choice_values(struct mp_log *log, const struct m_option *opt)
{
    struct m_opt_choice_alternatives *alt = opt->priv;
    for ( ; alt->name; alt++)
        mp_info(log, "    %s\n", alt->name[0] ? alt->name : "(passing nothing)");
    if ((opt->flags & M_OPT_MIN) && (opt->flags & M_OPT_MAX))
        mp_info(log, "    %g-%g (integer range)\n", opt->min, opt->max);
}

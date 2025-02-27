
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct m_config_option {int name; scalar_t__ is_set_from_config; scalar_t__ is_set_from_cmdline; TYPE_1__* opt; } ;
struct m_config {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int MP_ERR (struct m_config*,char*,int ) ;
 int M_OPT_INVALID ;
 int M_OPT_NOCFG ;
 int M_OPT_PRE_PARSE ;
 int M_SETOPT_BACKUP ;
 int M_SETOPT_CHECK_ONLY ;
 int M_SETOPT_FROM_CONFIG_FILE ;
 int M_SETOPT_NO_OVERWRITE ;
 int M_SETOPT_NO_PRE_PARSE ;
 int M_SETOPT_PRESERVE_CMDLINE ;
 int M_SETOPT_PRE_PARSE_ONLY ;
 int ensure_backup (struct m_config*,struct m_config_option*) ;

__attribute__((used)) static int handle_set_opt_flags(struct m_config *config,
                                struct m_config_option *co, int flags)
{
    int optflags = co->opt->flags;
    bool set = !(flags & M_SETOPT_CHECK_ONLY);

    if ((flags & M_SETOPT_PRE_PARSE_ONLY) && !(optflags & M_OPT_PRE_PARSE))
        return 0;

    if ((flags & M_SETOPT_PRESERVE_CMDLINE) && co->is_set_from_cmdline)
        set = 0;

    if ((flags & M_SETOPT_NO_OVERWRITE) &&
        (co->is_set_from_cmdline || co->is_set_from_config))
        set = 0;

    if ((flags & M_SETOPT_NO_PRE_PARSE) && (optflags & M_OPT_PRE_PARSE))
        return M_OPT_INVALID;


    if ((flags & M_SETOPT_FROM_CONFIG_FILE) && (optflags & M_OPT_NOCFG)) {
        MP_ERR(config, "The %s option can't be used in a config file.\n",
               co->name);
        return M_OPT_INVALID;
    }
    if ((flags & M_SETOPT_BACKUP) && set)
        ensure_backup(config, co);

    return set ? 2 : 1;
}

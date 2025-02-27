
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int encap_limit; int flags; } ;
typedef TYPE_1__ Tunnel ;


 int IP6_TNL_F_IGN_ENCAP_LIMIT ;
 int LOG_ERR ;
 int assert (char const*) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int,char*,...) ;
 int safe_atoi (char const*,int*) ;
 scalar_t__ streq (char const*,char*) ;

int config_parse_encap_limit(const char* unit,
                             const char *filename,
                             unsigned line,
                             const char *section,
                             unsigned section_line,
                             const char *lvalue,
                             int ltype,
                             const char *rvalue,
                             void *data,
                             void *userdata) {
        Tunnel *t = userdata;
        int k = 0;
        int r;

        assert(filename);
        assert(lvalue);
        assert(rvalue);

        if (streq(rvalue, "none"))
                t->flags |= IP6_TNL_F_IGN_ENCAP_LIMIT;
        else {
                r = safe_atoi(rvalue, &k);
                if (r < 0) {
                        log_syntax(unit, LOG_ERR, filename, line, r, "Failed to parse Tunnel Encapsulation Limit option, ignoring: %s", rvalue);
                        return 0;
                }

                if (k > 255 || k < 0)
                        log_syntax(unit, LOG_ERR, filename, line, 0, "Invalid Tunnel Encapsulation value, ignoring: %d", k);
                else {
                        t->encap_limit = k;
                        t->flags &= ~IP6_TNL_F_IGN_ENCAP_LIMIT;
                }
        }

        return 0;
}

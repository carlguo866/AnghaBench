
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
struct TYPE_2__ {scalar_t__ uid_range; void* uid_shift; void* userns_mode; } ;
typedef TYPE_1__ Settings ;


 int LOG_ERR ;
 void* UID_INVALID ;
 scalar_t__ UINT32_C (int) ;
 void* USER_NAMESPACE_FIXED ;
 void* USER_NAMESPACE_NO ;
 void* USER_NAMESPACE_PICK ;
 int assert (char const*) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int,char*,char const*) ;
 int parse_boolean (char const*) ;
 int parse_uid (char const*,scalar_t__*) ;
 int safe_atou32 (char const*,scalar_t__*) ;
 char* strchr (char const*,char) ;
 scalar_t__ streq (char const*,char*) ;
 char* strndupa (char const*,int) ;

int config_parse_private_users(
                const char *unit,
                const char *filename,
                unsigned line,
                const char *section,
                unsigned section_line,
                const char *lvalue,
                int ltype,
                const char *rvalue,
                void *data,
                void *userdata) {

        Settings *settings = data;
        int r;

        assert(filename);
        assert(lvalue);
        assert(rvalue);

        r = parse_boolean(rvalue);
        if (r == 0) {

                settings->userns_mode = USER_NAMESPACE_NO;
                settings->uid_shift = UID_INVALID;
                settings->uid_range = UINT32_C(0x10000);
        } else if (r > 0) {

                settings->userns_mode = USER_NAMESPACE_FIXED;
                settings->uid_shift = UID_INVALID;
                settings->uid_range = UINT32_C(0x10000);
        } else if (streq(rvalue, "pick")) {

                settings->userns_mode = USER_NAMESPACE_PICK;
                settings->uid_shift = UID_INVALID;
                settings->uid_range = UINT32_C(0x10000);
        } else {
                const char *range, *shift;
                uid_t sh, rn;



                range = strchr(rvalue, ':');
                if (range) {
                        shift = strndupa(rvalue, range - rvalue);
                        range++;

                        r = safe_atou32(range, &rn);
                        if (r < 0 || rn <= 0) {
                                log_syntax(unit, LOG_ERR, filename, line, r, "UID/GID range invalid, ignoring: %s", range);
                                return 0;
                        }
                } else {
                        shift = rvalue;
                        rn = UINT32_C(0x10000);
                }

                r = parse_uid(shift, &sh);
                if (r < 0) {
                        log_syntax(unit, LOG_ERR, filename, line, r, "UID/GID shift invalid, ignoring: %s", range);
                        return 0;
                }

                settings->userns_mode = USER_NAMESPACE_FIXED;
                settings->uid_shift = sh;
                settings->uid_range = rn;
        }

        return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;


 scalar_t__ STR_IN_SET (char const*,char*,char*,char*,char*,char*) ;
 int bus_append_parse_boolean (int *,char const*,char const*) ;
 int bus_append_parse_mode (int *,char const*,char const*) ;
 int bus_log_create_error (int) ;
 scalar_t__ isempty (char const*) ;
 int sd_bus_message_append (int *,char*,char*,char*,int,...) ;
 scalar_t__ streq (char const*,char*) ;

__attribute__((used)) static int bus_append_path_property(sd_bus_message *m, const char *field, const char *eq) {
        int r;

        if (streq(field, "MakeDirectory"))
                return bus_append_parse_boolean(m, field, eq);

        if (streq(field, "DirectoryMode"))
                return bus_append_parse_mode(m, field, eq);

        if (STR_IN_SET(field,
                       "PathExists", "PathExistsGlob", "PathChanged",
                       "PathModified", "DirectoryNotEmpty")) {
                if (isempty(eq))
                        r = sd_bus_message_append(m, "(sv)", "Paths", "a(ss)", 0);
                else
                        r = sd_bus_message_append(m, "(sv)", "Paths", "a(ss)", 1, field, eq);
                if (r < 0)
                        return bus_log_create_error(r);

                return 1;
        }

        return 0;
}

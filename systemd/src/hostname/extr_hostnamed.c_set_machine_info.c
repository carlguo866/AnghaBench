
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int sd_bus_message_handler_t ;
struct TYPE_11__ {int * data; int polkit_registry; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
typedef TYPE_1__ Context ;


 int CAP_SYS_ADMIN ;
 int PROP_CHASSIS ;
 int PROP_DEPLOYMENT ;
 int PROP_ICON_NAME ;
 int PROP_LOCATION ;
 int PROP_PRETTY_HOSTNAME ;
 int SD_BUS_ERROR_INVALID_ARGS ;
 int UID_INVALID ;
 int assert (TYPE_1__*) ;
 int bus_verify_polkit_async (TYPE_1__*,int ,char*,int *,int,int ,int *,int *) ;
 int context_write_data_machine_info (TYPE_1__*) ;
 char* empty_to_null (char const*) ;
 int filename_is_valid (char const*) ;
 int free_and_strdup (int *,char const*) ;
 int isempty (char const*) ;
 int log_error_errno (int,char*) ;
 int log_info (char*,char*,int ) ;
 int sd_bus_emit_properties_changed (int ,char*,char*,char*,int *) ;
 int sd_bus_error_set_errnof (int *,int,char*) ;
 int sd_bus_error_setf (int *,int ,char*,char const*) ;
 int sd_bus_message_get_bus (TYPE_1__*) ;
 int sd_bus_message_read (TYPE_1__*,char*,char const**,int*) ;
 int sd_bus_reply_method_return (TYPE_1__*,int *) ;
 scalar_t__ streq_ptr (char const*,int ) ;
 scalar_t__ string_has_cc (char const*,int *) ;
 int strna (int ) ;
 int valid_chassis (char const*) ;
 int valid_deployment (char const*) ;

__attribute__((used)) static int set_machine_info(Context *c, sd_bus_message *m, int prop, sd_bus_message_handler_t cb, sd_bus_error *error) {
        int interactive;
        const char *name;
        int r;

        assert(c);
        assert(m);

        r = sd_bus_message_read(m, "sb", &name, &interactive);
        if (r < 0)
                return r;

        name = empty_to_null(name);

        if (streq_ptr(name, c->data[prop]))
                return sd_bus_reply_method_return(m, ((void*)0));

        if (!isempty(name)) {



                if (prop == PROP_ICON_NAME && !filename_is_valid(name))
                        return sd_bus_error_setf(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid icon name '%s'", name);
                if (prop == PROP_PRETTY_HOSTNAME && string_has_cc(name, ((void*)0)))
                        return sd_bus_error_setf(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid pretty host name '%s'", name);
                if (prop == PROP_CHASSIS && !valid_chassis(name))
                        return sd_bus_error_setf(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid chassis '%s'", name);
                if (prop == PROP_DEPLOYMENT && !valid_deployment(name))
                        return sd_bus_error_setf(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid deployment '%s'", name);
                if (prop == PROP_LOCATION && string_has_cc(name, ((void*)0)))
                        return sd_bus_error_setf(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid location '%s'", name);
        }





        r = bus_verify_polkit_async(
                        m,
                        CAP_SYS_ADMIN,
                        prop == PROP_PRETTY_HOSTNAME ? "org.freedesktop.hostname1.set-static-hostname" : "org.freedesktop.hostname1.set-machine-info",
                        ((void*)0),
                        interactive,
                        UID_INVALID,
                        &c->polkit_registry,
                        error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        r = free_and_strdup(&c->data[prop], name);
        if (r < 0)
                return r;

        r = context_write_data_machine_info(c);
        if (r < 0) {
                log_error_errno(r, "Failed to write machine info: %m");
                return sd_bus_error_set_errnof(error, r, "Failed to write machine info: %m");
        }

        log_info("Changed %s to '%s'",
                 prop == PROP_PRETTY_HOSTNAME ? "pretty host name" :
                 prop == PROP_DEPLOYMENT ? "deployment" :
                 prop == PROP_LOCATION ? "location" :
                 prop == PROP_CHASSIS ? "chassis" : "icon name", strna(c->data[prop]));

        (void) sd_bus_emit_properties_changed(
                        sd_bus_message_get_bus(m),
                        "/org/freedesktop/hostname1",
                        "org.freedesktop.hostname1",
                        prop == PROP_PRETTY_HOSTNAME ? "PrettyHostname" :
                        prop == PROP_DEPLOYMENT ? "Deployment" :
                        prop == PROP_LOCATION ? "Location" :
                        prop == PROP_CHASSIS ? "Chassis" : "IconName" , ((void*)0));

        return sd_bus_reply_method_return(m, ((void*)0));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int JOB_TRY_RESTART ;
 int bus_unit_method_start_generic (int *,void*,int ,int,int *) ;

__attribute__((used)) static int method_try_restart(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        return bus_unit_method_start_generic(message, userdata, JOB_TRY_RESTART, 0, error);
}

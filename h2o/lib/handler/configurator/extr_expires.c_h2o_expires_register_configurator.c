
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exit; int enter; } ;
struct expires_configurator_t {TYPE_1__ super; int _args_stack; int args; } ;
typedef int h2o_globalconf_t ;


 int H2O_CONFIGURATOR_FLAG_ALL_LEVELS ;
 int H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR ;
 scalar_t__ h2o_configurator_create (int *,int) ;
 int h2o_configurator_define_command (TYPE_1__*,char*,int,int ) ;
 int on_config_enter ;
 int on_config_exit ;
 int on_config_expires ;

void h2o_expires_register_configurator(h2o_globalconf_t *conf)
{
    struct expires_configurator_t *c = (void *)h2o_configurator_create(conf, sizeof(*c));


    c->args = c->_args_stack;


    c->super.enter = on_config_enter;
    c->super.exit = on_config_exit;
    h2o_configurator_define_command(&c->super, "expires", H2O_CONFIGURATOR_FLAG_ALL_LEVELS | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                    on_config_expires);
}

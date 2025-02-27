
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_18__ {int data; } ;
typedef TYPE_6__ ngx_str_t ;
struct TYPE_19__ {TYPE_5__* protocol; } ;
typedef TYPE_7__ ngx_mail_module_t ;
struct TYPE_20__ {TYPE_5__* protocol; } ;
typedef TYPE_8__ ngx_mail_core_srv_conf_t ;
struct TYPE_21__ {TYPE_3__* cycle; TYPE_1__* args; } ;
typedef TYPE_9__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_16__ {int data; } ;
struct TYPE_17__ {TYPE_4__ name; } ;
struct TYPE_15__ {TYPE_2__** modules; } ;
struct TYPE_14__ {scalar_t__ type; TYPE_7__* ctx; } ;
struct TYPE_13__ {TYPE_6__* elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_LOG_EMERG ;
 scalar_t__ NGX_MAIL_MODULE ;
 int ngx_conf_log_error (int ,TYPE_9__*,int ,char*,TYPE_6__*) ;
 scalar_t__ ngx_strcmp (int ,int ) ;

__attribute__((used)) static char *
ngx_mail_core_protocol(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_mail_core_srv_conf_t *cscf = conf;

    ngx_str_t *value;
    ngx_uint_t m;
    ngx_mail_module_t *module;

    value = cf->args->elts;

    for (m = 0; cf->cycle->modules[m]; m++) {
        if (cf->cycle->modules[m]->type != NGX_MAIL_MODULE) {
            continue;
        }

        module = cf->cycle->modules[m]->ctx;

        if (module->protocol
            && ngx_strcmp(module->protocol->name.data, value[1].data) == 0)
        {
            cscf->protocol = module->protocol;

            return NGX_CONF_OK;
        }
    }

    ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                       "unknown protocol \"%V\"", &value[1]);
    return NGX_CONF_ERROR;
}

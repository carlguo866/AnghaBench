
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_14__ {scalar_t__ len; } ;
typedef TYPE_3__ ngx_str_t ;
struct TYPE_15__ {TYPE_3__ send; TYPE_10__* check_type_conf; } ;
typedef TYPE_4__ ngx_http_upstream_check_srv_conf_t ;
struct TYPE_16__ {TYPE_1__* args; } ;
typedef TYPE_5__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_13__ {int len; int data; } ;
struct TYPE_12__ {TYPE_3__* elts; } ;
struct TYPE_11__ {TYPE_2__ name; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 TYPE_10__* NGX_CONF_UNSET_PTR ;
 int NGX_LOG_EMERG ;
 int ngx_conf_log_error (int ,TYPE_5__*,int ,char*,...) ;
 TYPE_4__* ngx_http_conf_get_module_srv_conf (TYPE_5__*,int ) ;
 int ngx_http_upstream_check_module ;
 scalar_t__ ngx_strncmp (int ,char*,int) ;

__attribute__((used)) static char *
ngx_http_upstream_check_http_send(ngx_conf_t *cf, ngx_command_t *cmd,
    void *conf)
{
    ngx_str_t *value;
    ngx_http_upstream_check_srv_conf_t *ucscf;

    value = cf->args->elts;

    ucscf = ngx_http_conf_get_module_srv_conf(cf,
                                              ngx_http_upstream_check_module);

    if (ucscf->check_type_conf == NGX_CONF_UNSET_PTR) {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "invalid check_http_send should set [check] first");
        return NGX_CONF_ERROR;
    }

    if (value[1].len
        && (ucscf->check_type_conf->name.len != 4
            || ngx_strncmp(ucscf->check_type_conf->name.data,
                           "http", 4) != 0))
    {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "invalid check_http_send for type \"%V\"",
                           &ucscf->check_type_conf->name);
        return NGX_CONF_ERROR;
    }

    ucscf->send = value[1];

    return NGX_CONF_OK;
}

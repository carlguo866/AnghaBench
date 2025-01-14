
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_10__ {int len; int data; } ;
typedef TYPE_2__ ngx_str_t ;
typedef scalar_t__ ngx_msec_t ;
struct TYPE_11__ {TYPE_1__* args; } ;
typedef TYPE_3__ ngx_conf_t ;
struct TYPE_12__ {int offset; } ;
typedef TYPE_4__ ngx_command_t ;
struct TYPE_9__ {TYPE_2__* elts; } ;


 char* NGX_CONF_OK ;
 char* ngx_conf_set_msec_slot (TYPE_3__*,TYPE_4__*,void*) ;
 scalar_t__ ngx_strncasecmp (int ,int *,int) ;

__attribute__((used)) static char *
ngx_rtmp_live_set_msec_slot(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    char *p = conf;
    ngx_str_t *value;
    ngx_msec_t *msp;

    msp = (ngx_msec_t *) (p + cmd->offset);

    value = cf->args->elts;

    if (value[1].len == sizeof("off") - 1 &&
        ngx_strncasecmp(value[1].data, (u_char *) "off", value[1].len) == 0)
    {
        *msp = 0;
        return NGX_CONF_OK;
    }

    return ngx_conf_set_msec_slot(cf, cmd, conf);
}

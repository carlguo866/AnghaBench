
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char u_char ;
struct TYPE_7__ {char* data; int len; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_8__ {char mark; } ;
typedef TYPE_3__ ngx_http_userid_conf_t ;
struct TYPE_9__ {TYPE_1__* args; } ;
typedef TYPE_4__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_6__ {TYPE_2__* elts; } ;


 char* NGX_CONF_OK ;
 scalar_t__ ngx_strcmp (char*,char*) ;

__attribute__((used)) static char *
ngx_http_userid_mark(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_userid_conf_t *ucf = conf;

    ngx_str_t *value;

    if (ucf->mark != (u_char) '\xFF') {
        return "is duplicate";
    }

    value = cf->args->elts;

    if (ngx_strcmp(value[1].data, "off") == 0) {
        ucf->mark = '\0';
        return NGX_CONF_OK;
    }

    if (value[1].len != 1
        || !((value[1].data[0] >= '0' && value[1].data[0] <= '9')
              || (value[1].data[0] >= 'A' && value[1].data[0] <= 'Z')
              || (value[1].data[0] >= 'a' && value[1].data[0] <= 'z')
              || value[1].data[0] == '='))
    {
        return "value must be \"off\" or a single letter, digit or \"=\"";
    }

    ucf->mark = value[1].data[0];

    return NGX_CONF_OK;
}

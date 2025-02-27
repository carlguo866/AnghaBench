
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_13__ {char* data; int len; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_14__ {scalar_t__ builtin_session_cache; TYPE_5__* shm_zone; } ;
typedef TYPE_3__ ngx_mail_ssl_conf_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_15__ {TYPE_1__* args; } ;
typedef TYPE_4__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_16__ {int init; } ;
struct TYPE_12__ {size_t nelts; TYPE_2__* elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 scalar_t__ NGX_CONF_UNSET ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_EMERG ;
 scalar_t__ NGX_SSL_DFLT_BUILTIN_SCACHE ;
 scalar_t__ NGX_SSL_NONE_SCACHE ;
 scalar_t__ NGX_SSL_NO_BUILTIN_SCACHE ;
 scalar_t__ NGX_SSL_NO_SCACHE ;
 scalar_t__ ngx_atoi (char*,int) ;
 int ngx_conf_log_error (int ,TYPE_4__*,int ,char*,TYPE_2__*) ;
 int ngx_mail_ssl_module ;
 int ngx_pagesize ;
 scalar_t__ ngx_parse_size (TYPE_2__*) ;
 TYPE_5__* ngx_shared_memory_add (TYPE_4__*,TYPE_2__*,scalar_t__,int *) ;
 int ngx_ssl_session_cache_init ;
 scalar_t__ ngx_strcmp (char*,char*) ;
 scalar_t__ ngx_strncmp (char*,char*,int) ;

__attribute__((used)) static char *
ngx_mail_ssl_session_cache(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_mail_ssl_conf_t *scf = conf;

    size_t len;
    ngx_str_t *value, name, size;
    ngx_int_t n;
    ngx_uint_t i, j;

    value = cf->args->elts;

    for (i = 1; i < cf->args->nelts; i++) {

        if (ngx_strcmp(value[i].data, "off") == 0) {
            scf->builtin_session_cache = NGX_SSL_NO_SCACHE;
            continue;
        }

        if (ngx_strcmp(value[i].data, "none") == 0) {
            scf->builtin_session_cache = NGX_SSL_NONE_SCACHE;
            continue;
        }

        if (ngx_strcmp(value[i].data, "builtin") == 0) {
            scf->builtin_session_cache = NGX_SSL_DFLT_BUILTIN_SCACHE;
            continue;
        }

        if (value[i].len > sizeof("builtin:") - 1
            && ngx_strncmp(value[i].data, "builtin:", sizeof("builtin:") - 1)
               == 0)
        {
            n = ngx_atoi(value[i].data + sizeof("builtin:") - 1,
                         value[i].len - (sizeof("builtin:") - 1));

            if (n == NGX_ERROR) {
                goto invalid;
            }

            scf->builtin_session_cache = n;

            continue;
        }

        if (value[i].len > sizeof("shared:") - 1
            && ngx_strncmp(value[i].data, "shared:", sizeof("shared:") - 1)
               == 0)
        {
            len = 0;

            for (j = sizeof("shared:") - 1; j < value[i].len; j++) {
                if (value[i].data[j] == ':') {
                    break;
                }

                len++;
            }

            if (len == 0) {
                goto invalid;
            }

            name.len = len;
            name.data = value[i].data + sizeof("shared:") - 1;

            size.len = value[i].len - j - 1;
            size.data = name.data + len + 1;

            n = ngx_parse_size(&size);

            if (n == NGX_ERROR) {
                goto invalid;
            }

            if (n < (ngx_int_t) (8 * ngx_pagesize)) {
                ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                                   "session cache \"%V\" is too small",
                                   &value[i]);

                return NGX_CONF_ERROR;
            }

            scf->shm_zone = ngx_shared_memory_add(cf, &name, n,
                                                   &ngx_mail_ssl_module);
            if (scf->shm_zone == ((void*)0)) {
                return NGX_CONF_ERROR;
            }

            scf->shm_zone->init = ngx_ssl_session_cache_init;

            continue;
        }

        goto invalid;
    }

    if (scf->shm_zone && scf->builtin_session_cache == NGX_CONF_UNSET) {
        scf->builtin_session_cache = NGX_SSL_NO_BUILTIN_SCACHE;
    }

    return NGX_CONF_OK;

invalid:

    ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                       "invalid session cache \"%V\"", &value[i]);

    return NGX_CONF_ERROR;
}

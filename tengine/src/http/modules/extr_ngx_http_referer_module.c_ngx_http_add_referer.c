
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ len; } ;
typedef TYPE_1__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
typedef int ngx_hash_keys_arrays_t ;
struct TYPE_13__ {int pool; } ;
typedef TYPE_2__ ngx_conf_t ;


 scalar_t__ NGX_BUSY ;
 scalar_t__ NGX_DECLINED ;
 scalar_t__ NGX_ERROR ;
 int NGX_HASH_WILDCARD_KEY ;
 TYPE_1__* NGX_HTTP_REFERER_NO_URI_PART ;
 int NGX_LOG_EMERG ;
 scalar_t__ NGX_OK ;
 int ngx_conf_log_error (int ,TYPE_2__*,int ,char*,TYPE_1__*) ;
 scalar_t__ ngx_hash_add_key (int *,TYPE_1__*,TYPE_1__*,int ) ;
 TYPE_1__* ngx_palloc (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_add_referer(ngx_conf_t *cf, ngx_hash_keys_arrays_t *keys,
    ngx_str_t *value, ngx_str_t *uri)
{
    ngx_int_t rc;
    ngx_str_t *u;

    if (uri == ((void*)0) || uri->len == 0) {
        u = NGX_HTTP_REFERER_NO_URI_PART;

    } else {
        u = ngx_palloc(cf->pool, sizeof(ngx_str_t));
        if (u == ((void*)0)) {
            return NGX_ERROR;
        }

        *u = *uri;
    }

    rc = ngx_hash_add_key(keys, value, u, NGX_HASH_WILDCARD_KEY);

    if (rc == NGX_OK) {
        return NGX_OK;
    }

    if (rc == NGX_DECLINED) {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "invalid hostname or wildcard \"%V\"", value);
    }

    if (rc == NGX_BUSY) {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "conflicting parameter \"%V\"", value);
    }

    return NGX_ERROR;
}

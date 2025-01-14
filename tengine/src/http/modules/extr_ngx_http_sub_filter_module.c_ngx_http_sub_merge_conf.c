
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_http_sub_tables_t ;
struct TYPE_12__ {int value; } ;
struct TYPE_14__ {int value; TYPE_2__ match; } ;
typedef TYPE_4__ ngx_http_sub_pair_t ;
struct TYPE_15__ {int * value; int match; } ;
typedef TYPE_5__ ngx_http_sub_match_t ;
struct TYPE_16__ {scalar_t__ dynamic; TYPE_3__* matches; int * tables; TYPE_1__* pairs; int types; int types_keys; int last_modified; int once; } ;
typedef TYPE_6__ ngx_http_sub_loc_conf_t ;
struct TYPE_17__ {int pool; } ;
typedef TYPE_7__ ngx_conf_t ;
typedef int ngx_array_t ;
struct TYPE_13__ {int nelts; TYPE_5__* elts; } ;
struct TYPE_11__ {int nelts; TYPE_4__* elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 scalar_t__ NGX_OK ;
 int ngx_conf_merge_value (int ,int ,int) ;
 int ngx_http_html_default_types ;
 scalar_t__ ngx_http_merge_types (TYPE_7__*,int *,int *,int *,int *,int ) ;
 int ngx_http_sub_init_tables (int *,TYPE_5__*,int) ;
 void* ngx_palloc (int ,int) ;

__attribute__((used)) static char *
ngx_http_sub_merge_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_uint_t i, n;
    ngx_http_sub_pair_t *pairs;
    ngx_http_sub_match_t *matches;
    ngx_http_sub_loc_conf_t *prev = parent;
    ngx_http_sub_loc_conf_t *conf = child;

    ngx_conf_merge_value(conf->once, prev->once, 1);
    ngx_conf_merge_value(conf->last_modified, prev->last_modified, 0);

    if (ngx_http_merge_types(cf, &conf->types_keys, &conf->types,
                             &prev->types_keys, &prev->types,
                             ngx_http_html_default_types)
        != NGX_OK)
    {
        return NGX_CONF_ERROR;
    }

    if (conf->pairs == ((void*)0)) {
        conf->dynamic = prev->dynamic;
        conf->pairs = prev->pairs;
        conf->matches = prev->matches;
        conf->tables = prev->tables;
    }

    if (conf->pairs && conf->dynamic == 0 && conf->tables == ((void*)0)) {
        pairs = conf->pairs->elts;
        n = conf->pairs->nelts;

        matches = ngx_palloc(cf->pool, sizeof(ngx_http_sub_match_t) * n);
        if (matches == ((void*)0)) {
            return NGX_CONF_ERROR;
        }

        for (i = 0; i < n; i++) {
            matches[i].match = pairs[i].match.value;
            matches[i].value = &pairs[i].value;
        }

        conf->matches = ngx_palloc(cf->pool, sizeof(ngx_array_t));
        if (conf->matches == ((void*)0)) {
            return NGX_CONF_ERROR;
        }

        conf->matches->elts = matches;
        conf->matches->nelts = n;

        conf->tables = ngx_palloc(cf->pool, sizeof(ngx_http_sub_tables_t));
        if (conf->tables == ((void*)0)) {
            return NGX_CONF_ERROR;
        }

        ngx_http_sub_init_tables(conf->tables, conf->matches->elts,
                                 conf->matches->nelts);
    }

    return NGX_CONF_OK;
}

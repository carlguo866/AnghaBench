
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef size_t ngx_uint_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_18__ {size_t len; int * data; } ;
struct TYPE_24__ {uintptr_t data; int flags; size_t index; TYPE_11__ name; int * get_handler; } ;
typedef TYPE_6__ ngx_http_variable_t ;
struct TYPE_20__ {size_t nelts; TYPE_6__* elts; } ;
struct TYPE_19__ {size_t nelts; TYPE_6__* elts; } ;
struct TYPE_25__ {TYPE_5__* variables_keys; int variables_hash_bucket_size; int variables_hash_max_size; int variables_hash; TYPE_2__ prefix_variables; TYPE_1__ variables; } ;
typedef TYPE_7__ ngx_http_core_main_conf_t ;
struct TYPE_21__ {size_t len; int * data; } ;
struct TYPE_26__ {TYPE_3__ key; TYPE_6__* value; } ;
typedef TYPE_8__ ngx_hash_key_t ;
struct TYPE_27__ {char* name; int * temp_pool; int pool; int bucket_size; int max_size; int key; int * hash; } ;
typedef TYPE_9__ ngx_hash_init_t ;
struct TYPE_17__ {int pool; int log; } ;
typedef TYPE_10__ ngx_conf_t ;
struct TYPE_22__ {size_t nelts; TYPE_8__* elts; } ;
struct TYPE_23__ {TYPE_4__ keys; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_VAR_INDEXED ;
 int NGX_HTTP_VAR_NOHASH ;
 int NGX_HTTP_VAR_WEAK ;
 int NGX_LOG_EMERG ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_hash_init (TYPE_9__*,TYPE_8__*,size_t) ;
 int ngx_hash_key ;
 TYPE_7__* ngx_http_conf_get_module_main_conf (TYPE_10__*,int ) ;
 int ngx_http_core_module ;
 int ngx_log_error (int ,int ,int ,char*,TYPE_11__*) ;
 scalar_t__ ngx_strncmp (int *,int *,size_t) ;

ngx_int_t
ngx_http_variables_init_vars(ngx_conf_t *cf)
{
    size_t len;
    ngx_uint_t i, n;
    ngx_hash_key_t *key;
    ngx_hash_init_t hash;
    ngx_http_variable_t *v, *av, *pv;
    ngx_http_core_main_conf_t *cmcf;



    cmcf = ngx_http_conf_get_module_main_conf(cf, ngx_http_core_module);

    v = cmcf->variables.elts;
    pv = cmcf->prefix_variables.elts;
    key = cmcf->variables_keys->keys.elts;

    for (i = 0; i < cmcf->variables.nelts; i++) {

        for (n = 0; n < cmcf->variables_keys->keys.nelts; n++) {

            av = key[n].value;

            if (v[i].name.len == key[n].key.len
                && ngx_strncmp(v[i].name.data, key[n].key.data, v[i].name.len)
                   == 0)
            {
                v[i].get_handler = av->get_handler;
                v[i].data = av->data;

                av->flags |= NGX_HTTP_VAR_INDEXED;
                v[i].flags = av->flags;

                av->index = i;

                if (av->get_handler == ((void*)0)
                    || (av->flags & NGX_HTTP_VAR_WEAK))
                {
                    break;
                }

                goto next;
            }
        }

        len = 0;
        av = ((void*)0);

        for (n = 0; n < cmcf->prefix_variables.nelts; n++) {
            if (v[i].name.len >= pv[n].name.len && v[i].name.len > len
                && ngx_strncmp(v[i].name.data, pv[n].name.data, pv[n].name.len)
                   == 0)
            {
                av = &pv[n];
                len = pv[n].name.len;
            }
        }

        if (av) {
            v[i].get_handler = av->get_handler;
            v[i].data = (uintptr_t) &v[i].name;
            v[i].flags = av->flags;

            goto next;
        }

        if (v[i].get_handler == ((void*)0)) {
            ngx_log_error(NGX_LOG_EMERG, cf->log, 0,
                          "unknown \"%V\" variable", &v[i].name);

            return NGX_ERROR;
        }

    next:
        continue;
    }


    for (n = 0; n < cmcf->variables_keys->keys.nelts; n++) {
        av = key[n].value;

        if (av->flags & NGX_HTTP_VAR_NOHASH) {
            key[n].key.data = ((void*)0);
        }
    }


    hash.hash = &cmcf->variables_hash;
    hash.key = ngx_hash_key;
    hash.max_size = cmcf->variables_hash_max_size;
    hash.bucket_size = cmcf->variables_hash_bucket_size;
    hash.name = "variables_hash";
    hash.pool = cf->pool;
    hash.temp_pool = ((void*)0);

    if (ngx_hash_init(&hash, cmcf->variables_keys->keys.elts,
                      cmcf->variables_keys->keys.nelts)
        != NGX_OK)
    {
        return NGX_ERROR;
    }

    cmcf->variables_keys = ((void*)0);

    return NGX_OK;
}

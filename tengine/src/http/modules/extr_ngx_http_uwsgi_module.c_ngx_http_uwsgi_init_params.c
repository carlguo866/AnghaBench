
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_40__ TYPE_9__ ;
typedef struct TYPE_39__ TYPE_8__ ;
typedef struct TYPE_38__ TYPE_7__ ;
typedef struct TYPE_37__ TYPE_6__ ;
typedef struct TYPE_36__ TYPE_5__ ;
typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_1__ ;
typedef struct TYPE_31__ TYPE_15__ ;
typedef struct TYPE_30__ TYPE_14__ ;
typedef struct TYPE_29__ TYPE_13__ ;
typedef struct TYPE_28__ TYPE_12__ ;
typedef struct TYPE_27__ TYPE_11__ ;
typedef struct TYPE_26__ TYPE_10__ ;


typedef int u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_34__ {scalar_t__ len; } ;
struct TYPE_35__ {int len; scalar_t__ data; } ;
struct TYPE_37__ {TYPE_3__ value; TYPE_4__ key; } ;
typedef TYPE_6__ ngx_keyval_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_32__ {void* buckets; } ;
struct TYPE_38__ {size_t number; TYPE_1__ hash; int * lengths; int * values; int flushes; } ;
typedef TYPE_7__ ngx_http_uwsgi_params_t ;
struct TYPE_39__ {TYPE_2__* params_source; } ;
typedef TYPE_8__ ngx_http_uwsgi_loc_conf_t ;
struct TYPE_40__ {int skip_empty; TYPE_3__ value; TYPE_4__ key; } ;
typedef TYPE_9__ ngx_http_upstream_param_t ;
struct TYPE_26__ {int len; void* code; } ;
typedef TYPE_10__ ngx_http_script_copy_code_t ;
struct TYPE_27__ {int ** values; int ** lengths; int * flushes; TYPE_3__* source; TYPE_14__* cf; } ;
typedef TYPE_11__ ngx_http_script_compile_t ;
typedef void* ngx_http_script_code_pt ;
struct TYPE_36__ {int len; scalar_t__ data; } ;
struct TYPE_28__ {void* value; TYPE_5__ key; int key_hash; } ;
typedef TYPE_12__ ngx_hash_key_t ;
struct TYPE_29__ {int max_size; int bucket_size; char* name; int * temp_pool; int pool; int (* key ) (scalar_t__,int) ;TYPE_1__* hash; } ;
typedef TYPE_13__ ngx_hash_init_t ;
struct TYPE_30__ {int pool; int temp_pool; } ;
typedef TYPE_14__ ngx_conf_t ;
struct TYPE_31__ {size_t nelts; TYPE_9__* elts; } ;
typedef TYPE_15__ ngx_array_t ;
struct TYPE_33__ {size_t nelts; TYPE_9__* elts; } ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 void* ngx_array_create (int ,int,int) ;
 scalar_t__ ngx_array_init (TYPE_15__*,int ,int,int) ;
 void* ngx_array_push (TYPE_15__*) ;
 void* ngx_array_push_n (int *,int) ;
 scalar_t__ ngx_hash_init (TYPE_13__*,TYPE_9__*,size_t) ;
 int ngx_hash_key_lc (scalar_t__,int) ;
 scalar_t__ ngx_http_script_compile (TYPE_11__*) ;
 void* ngx_http_script_copy_code ;
 scalar_t__ ngx_http_script_copy_len_code ;
 int ngx_memcpy (int *,scalar_t__,int) ;
 int ngx_memzero (TYPE_11__*,int) ;
 scalar_t__ ngx_strcasecmp (scalar_t__,scalar_t__) ;
 scalar_t__ ngx_strncmp (scalar_t__,char*,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_uwsgi_init_params(ngx_conf_t *cf, ngx_http_uwsgi_loc_conf_t *conf,
    ngx_http_uwsgi_params_t *params, ngx_keyval_t *default_params)
{
    u_char *p;
    size_t size;
    uintptr_t *code;
    ngx_uint_t i, nsrc;
    ngx_array_t headers_names, params_merged;
    ngx_keyval_t *h;
    ngx_hash_key_t *hk;
    ngx_hash_init_t hash;
    ngx_http_upstream_param_t *src, *s;
    ngx_http_script_compile_t sc;
    ngx_http_script_copy_code_t *copy;

    if (params->hash.buckets) {
        return NGX_OK;
    }

    if (conf->params_source == ((void*)0) && default_params == ((void*)0)) {
        params->hash.buckets = (void *) 1;
        return NGX_OK;
    }

    params->lengths = ngx_array_create(cf->pool, 64, 1);
    if (params->lengths == ((void*)0)) {
        return NGX_ERROR;
    }

    params->values = ngx_array_create(cf->pool, 512, 1);
    if (params->values == ((void*)0)) {
        return NGX_ERROR;
    }

    if (ngx_array_init(&headers_names, cf->temp_pool, 4, sizeof(ngx_hash_key_t))
        != NGX_OK)
    {
        return NGX_ERROR;
    }

    if (conf->params_source) {
        src = conf->params_source->elts;
        nsrc = conf->params_source->nelts;

    } else {
        src = ((void*)0);
        nsrc = 0;
    }

    if (default_params) {
        if (ngx_array_init(&params_merged, cf->temp_pool, 4,
                           sizeof(ngx_http_upstream_param_t))
            != NGX_OK)
        {
            return NGX_ERROR;
        }

        for (i = 0; i < nsrc; i++) {

            s = ngx_array_push(&params_merged);
            if (s == ((void*)0)) {
                return NGX_ERROR;
            }

            *s = src[i];
        }

        h = default_params;

        while (h->key.len) {

            src = params_merged.elts;
            nsrc = params_merged.nelts;

            for (i = 0; i < nsrc; i++) {
                if (ngx_strcasecmp(h->key.data, src[i].key.data) == 0) {
                    goto next;
                }
            }

            s = ngx_array_push(&params_merged);
            if (s == ((void*)0)) {
                return NGX_ERROR;
            }

            s->key = h->key;
            s->value = h->value;
            s->skip_empty = 1;

        next:

            h++;
        }

        src = params_merged.elts;
        nsrc = params_merged.nelts;
    }

    for (i = 0; i < nsrc; i++) {

        if (src[i].key.len > sizeof("HTTP_") - 1
            && ngx_strncmp(src[i].key.data, "HTTP_", sizeof("HTTP_") - 1) == 0)
        {
            hk = ngx_array_push(&headers_names);
            if (hk == ((void*)0)) {
                return NGX_ERROR;
            }

            hk->key.len = src[i].key.len - 5;
            hk->key.data = src[i].key.data + 5;
            hk->key_hash = ngx_hash_key_lc(hk->key.data, hk->key.len);
            hk->value = (void *) 1;

            if (src[i].value.len == 0) {
                continue;
            }
        }

        copy = ngx_array_push_n(params->lengths,
                                sizeof(ngx_http_script_copy_code_t));
        if (copy == ((void*)0)) {
            return NGX_ERROR;
        }

        copy->code = (ngx_http_script_code_pt) (void *)
                                                 ngx_http_script_copy_len_code;
        copy->len = src[i].key.len;

        copy = ngx_array_push_n(params->lengths,
                                sizeof(ngx_http_script_copy_code_t));
        if (copy == ((void*)0)) {
            return NGX_ERROR;
        }

        copy->code = (ngx_http_script_code_pt) (void *)
                                                 ngx_http_script_copy_len_code;
        copy->len = src[i].skip_empty;


        size = (sizeof(ngx_http_script_copy_code_t)
                + src[i].key.len + sizeof(uintptr_t) - 1)
               & ~(sizeof(uintptr_t) - 1);

        copy = ngx_array_push_n(params->values, size);
        if (copy == ((void*)0)) {
            return NGX_ERROR;
        }

        copy->code = ngx_http_script_copy_code;
        copy->len = src[i].key.len;

        p = (u_char *) copy + sizeof(ngx_http_script_copy_code_t);
        ngx_memcpy(p, src[i].key.data, src[i].key.len);


        ngx_memzero(&sc, sizeof(ngx_http_script_compile_t));

        sc.cf = cf;
        sc.source = &src[i].value;
        sc.flushes = &params->flushes;
        sc.lengths = &params->lengths;
        sc.values = &params->values;

        if (ngx_http_script_compile(&sc) != NGX_OK) {
            return NGX_ERROR;
        }

        code = ngx_array_push_n(params->lengths, sizeof(uintptr_t));
        if (code == ((void*)0)) {
            return NGX_ERROR;
        }

        *code = (uintptr_t) ((void*)0);


        code = ngx_array_push_n(params->values, sizeof(uintptr_t));
        if (code == ((void*)0)) {
            return NGX_ERROR;
        }

        *code = (uintptr_t) ((void*)0);
    }

    code = ngx_array_push_n(params->lengths, sizeof(uintptr_t));
    if (code == ((void*)0)) {
        return NGX_ERROR;
    }

    *code = (uintptr_t) ((void*)0);

    params->number = headers_names.nelts;

    hash.hash = &params->hash;
    hash.key = ngx_hash_key_lc;
    hash.max_size = 512;
    hash.bucket_size = 64;
    hash.name = "uwsgi_params_hash";
    hash.pool = cf->pool;
    hash.temp_pool = ((void*)0);

    return ngx_hash_init(&hash, headers_names.elts, headers_names.nelts);
}

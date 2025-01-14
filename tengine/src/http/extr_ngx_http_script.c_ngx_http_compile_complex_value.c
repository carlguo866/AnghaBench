
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_14__ {size_t len; char* data; } ;
typedef TYPE_3__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
typedef int ngx_http_script_var_code_t ;
typedef int ngx_http_script_copy_code_t ;
struct TYPE_15__ {int complete_lengths; int complete_values; scalar_t__ root_prefix; scalar_t__ conf_prefix; int zero; TYPE_6__** values; TYPE_6__** lengths; TYPE_6__** flushes; TYPE_3__* source; TYPE_1__* cf; } ;
typedef TYPE_4__ ngx_http_script_compile_t ;
struct TYPE_16__ {TYPE_2__* complex_value; scalar_t__ root_prefix; scalar_t__ conf_prefix; int zero; TYPE_1__* cf; TYPE_3__* value; } ;
typedef TYPE_5__ ngx_http_compile_complex_value_t ;
struct TYPE_17__ {int nelts; size_t* elts; } ;
typedef TYPE_6__ ngx_array_t ;
struct TYPE_13__ {size_t* flushes; size_t* lengths; size_t* values; TYPE_3__ value; } ;
struct TYPE_12__ {int pool; int cycle; } ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_array_init (TYPE_6__*,int ,size_t,int) ;
 scalar_t__ ngx_conf_full_name (int ,TYPE_3__*,scalar_t__) ;
 scalar_t__ ngx_http_script_compile (TYPE_4__*) ;
 int ngx_memzero (TYPE_4__*,int) ;

ngx_int_t
ngx_http_compile_complex_value(ngx_http_compile_complex_value_t *ccv)
{
    ngx_str_t *v;
    ngx_uint_t i, n, nv, nc;
    ngx_array_t flushes, lengths, values, *pf, *pl, *pv;
    ngx_http_script_compile_t sc;

    v = ccv->value;

    nv = 0;
    nc = 0;

    for (i = 0; i < v->len; i++) {
        if (v->data[i] == '$') {
            if (v->data[i + 1] >= '1' && v->data[i + 1] <= '9') {
                nc++;

            } else {
                nv++;
            }
        }
    }

    if ((v->len == 0 || v->data[0] != '$')
        && (ccv->conf_prefix || ccv->root_prefix))
    {
        if (ngx_conf_full_name(ccv->cf->cycle, v, ccv->conf_prefix) != NGX_OK) {
            return NGX_ERROR;
        }

        ccv->conf_prefix = 0;
        ccv->root_prefix = 0;
    }

    ccv->complex_value->value = *v;
    ccv->complex_value->flushes = ((void*)0);
    ccv->complex_value->lengths = ((void*)0);
    ccv->complex_value->values = ((void*)0);

    if (nv == 0 && nc == 0) {
        return NGX_OK;
    }

    n = nv + 1;

    if (ngx_array_init(&flushes, ccv->cf->pool, n, sizeof(ngx_uint_t))
        != NGX_OK)
    {
        return NGX_ERROR;
    }

    n = nv * (2 * sizeof(ngx_http_script_copy_code_t)
                  + sizeof(ngx_http_script_var_code_t))
        + sizeof(uintptr_t);

    if (ngx_array_init(&lengths, ccv->cf->pool, n, 1) != NGX_OK) {
        return NGX_ERROR;
    }

    n = (nv * (2 * sizeof(ngx_http_script_copy_code_t)
                   + sizeof(ngx_http_script_var_code_t))
                + sizeof(uintptr_t)
                + v->len
                + sizeof(uintptr_t) - 1)
            & ~(sizeof(uintptr_t) - 1);

    if (ngx_array_init(&values, ccv->cf->pool, n, 1) != NGX_OK) {
        return NGX_ERROR;
    }

    pf = &flushes;
    pl = &lengths;
    pv = &values;

    ngx_memzero(&sc, sizeof(ngx_http_script_compile_t));

    sc.cf = ccv->cf;
    sc.source = v;
    sc.flushes = &pf;
    sc.lengths = &pl;
    sc.values = &pv;
    sc.complete_lengths = 1;
    sc.complete_values = 1;
    sc.zero = ccv->zero;
    sc.conf_prefix = ccv->conf_prefix;
    sc.root_prefix = ccv->root_prefix;

    if (ngx_http_script_compile(&sc) != NGX_OK) {
        return NGX_ERROR;
    }

    if (flushes.nelts) {
        ccv->complex_value->flushes = flushes.elts;
        ccv->complex_value->flushes[flushes.nelts] = (ngx_uint_t) -1;
    }

    ccv->complex_value->lengths = lengths.elts;
    ccv->complex_value->values = values.elts;

    return NGX_OK;
}

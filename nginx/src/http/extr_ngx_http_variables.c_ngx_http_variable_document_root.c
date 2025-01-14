
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_16__ ;


struct TYPE_21__ {int data; int len; } ;
typedef TYPE_4__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_22__ {int valid; int data; scalar_t__ not_found; scalar_t__ no_cacheable; int len; } ;
typedef TYPE_5__ ngx_http_variable_value_t ;
struct TYPE_23__ {int pool; } ;
typedef TYPE_6__ ngx_http_request_t ;
struct TYPE_18__ {int data; int len; } ;
struct TYPE_24__ {TYPE_3__* root_values; TYPE_2__* root_lengths; TYPE_1__ root; } ;
typedef TYPE_7__ ngx_http_core_loc_conf_t ;
struct TYPE_20__ {int elts; } ;
struct TYPE_19__ {int elts; } ;
struct TYPE_17__ {int prefix; } ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 TYPE_16__* ngx_cycle ;
 scalar_t__ ngx_get_full_name (int ,TYPE_4__*,TYPE_4__*) ;
 int ngx_http_core_module ;
 TYPE_7__* ngx_http_get_module_loc_conf (TYPE_6__*,int ) ;
 int * ngx_http_script_run (TYPE_6__*,TYPE_4__*,int ,int ,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_variable_document_root(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    ngx_str_t path;
    ngx_http_core_loc_conf_t *clcf;

    clcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);

    if (clcf->root_lengths == ((void*)0)) {
        v->len = clcf->root.len;
        v->valid = 1;
        v->no_cacheable = 0;
        v->not_found = 0;
        v->data = clcf->root.data;

    } else {
        if (ngx_http_script_run(r, &path, clcf->root_lengths->elts, 0,
                                clcf->root_values->elts)
            == ((void*)0))
        {
            return NGX_ERROR;
        }

        if (ngx_get_full_name(r->pool, (ngx_str_t *) &ngx_cycle->prefix, &path)
            != NGX_OK)
        {
            return NGX_ERROR;
        }

        v->len = path.len;
        v->valid = 1;
        v->no_cacheable = 0;
        v->not_found = 0;
        v->data = path.data;
    }

    return NGX_OK;
}

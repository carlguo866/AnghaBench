
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
typedef size_t ngx_uint_t ;
typedef int ngx_int_t ;
struct TYPE_10__ {int valid; int not_found; int len; int * data; scalar_t__ no_cacheable; } ;
typedef TYPE_3__ ngx_http_variable_value_t ;
struct TYPE_11__ {TYPE_1__* peer; } ;
typedef TYPE_4__ ngx_http_upstream_state_t ;
struct TYPE_12__ {TYPE_2__* upstream_states; int pool; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_9__ {size_t nelts; TYPE_4__* elts; } ;
struct TYPE_8__ {scalar_t__ len; int data; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 int * ngx_cpymem (int *,int ,scalar_t__) ;
 int * ngx_pnalloc (int ,size_t) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_addr_variable(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    u_char *p;
    size_t len;
    ngx_uint_t i;
    ngx_http_upstream_state_t *state;

    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;

    if (r->upstream_states == ((void*)0) || r->upstream_states->nelts == 0) {
        v->not_found = 1;
        return NGX_OK;
    }

    len = 0;
    state = r->upstream_states->elts;

    for (i = 0; i < r->upstream_states->nelts; i++) {
        if (state[i].peer) {
            len += state[i].peer->len + 2;

        } else {
            len += 3;
        }
    }

    p = ngx_pnalloc(r->pool, len);
    if (p == ((void*)0)) {
        return NGX_ERROR;
    }

    v->data = p;

    i = 0;

    for ( ;; ) {
        if (state[i].peer) {
            p = ngx_cpymem(p, state[i].peer->data, state[i].peer->len);
        }

        if (++i == r->upstream_states->nelts) {
            break;
        }

        if (state[i].peer) {
            *p++ = ',';
            *p++ = ' ';

        } else {
            *p++ = ' ';
            *p++ = ':';
            *p++ = ' ';

            if (++i == r->upstream_states->nelts) {
                break;
            }

            continue;
        }
    }

    v->len = p - v->data;

    return NGX_OK;
}

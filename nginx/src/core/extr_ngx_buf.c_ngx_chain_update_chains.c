
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ngx_pool_t ;
struct TYPE_7__ {struct TYPE_7__* next; TYPE_6__* buf; } ;
typedef TYPE_1__ ngx_chain_t ;
typedef scalar_t__ ngx_buf_tag_t ;
struct TYPE_8__ {scalar_t__ tag; int start; int last; int pos; } ;


 scalar_t__ ngx_buf_size (TYPE_6__*) ;
 int ngx_free_chain (int *,TYPE_1__*) ;

void
ngx_chain_update_chains(ngx_pool_t *p, ngx_chain_t **free, ngx_chain_t **busy,
    ngx_chain_t **out, ngx_buf_tag_t tag)
{
    ngx_chain_t *cl;

    if (*out) {
        if (*busy == ((void*)0)) {
            *busy = *out;

        } else {
            for (cl = *busy; cl->next; cl = cl->next) { }

            cl->next = *out;
        }

        *out = ((void*)0);
    }

    while (*busy) {
        cl = *busy;

        if (ngx_buf_size(cl->buf) != 0) {
            break;
        }

        if (cl->buf->tag != tag) {
            *busy = cl->next;
            ngx_free_chain(p, cl);
            continue;
        }

        cl->buf->pos = cl->buf->start;
        cl->buf->last = cl->buf->start;

        *busy = cl->next;
        cl->next = *free;
        *free = cl;
    }
}

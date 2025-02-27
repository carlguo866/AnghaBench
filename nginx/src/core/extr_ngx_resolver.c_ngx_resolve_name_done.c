
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef size_t ngx_uint_t ;
struct TYPE_17__ {TYPE_5__* event; int name_expire_queue; int name_rbtree; int srv_expire_queue; int srv_rbtree; int log; } ;
typedef TYPE_3__ ngx_resolver_t ;
struct TYPE_18__ {TYPE_5__* waiting; } ;
typedef TYPE_4__ ngx_resolver_node_t ;
struct TYPE_16__ {scalar_t__ len; } ;
struct TYPE_19__ {size_t nsrvs; scalar_t__ timer_set; struct TYPE_19__* event; TYPE_2__ service; int name; struct TYPE_19__* next; TYPE_4__* node; int state; TYPE_10__* srvs; scalar_t__ quick; TYPE_3__* resolver; } ;
typedef TYPE_5__ ngx_resolver_ctx_t ;
struct TYPE_15__ {TYPE_10__* data; } ;
struct TYPE_14__ {TYPE_1__ name; struct TYPE_14__* addrs; struct TYPE_14__* sockaddr; TYPE_5__* ctx; } ;


 int NGX_AGAIN ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_CORE ;
 int NGX_RESOLVE_TIMEDOUT ;
 int ngx_del_timer (TYPE_5__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int ngx_log_error (int ,int ,int ,char*,int *) ;
 int ngx_resolver_expire (TYPE_3__*,int *,int *) ;
 int ngx_resolver_free (TYPE_3__*,TYPE_10__*) ;
 int ngx_resolver_free_locked (TYPE_3__*,TYPE_5__*) ;
 scalar_t__ ngx_resolver_resend_empty (TYPE_3__*) ;

void
ngx_resolve_name_done(ngx_resolver_ctx_t *ctx)
{
    ngx_uint_t i;
    ngx_resolver_t *r;
    ngx_resolver_ctx_t *w, **p;
    ngx_resolver_node_t *rn;

    r = ctx->resolver;

    ngx_log_debug1(NGX_LOG_DEBUG_CORE, r->log, 0,
                   "resolve name done: %i", ctx->state);

    if (ctx->quick) {
        return;
    }

    if (ctx->event && ctx->event->timer_set) {
        ngx_del_timer(ctx->event);
    }



    if (ctx->nsrvs) {
        for (i = 0; i < ctx->nsrvs; i++) {
            if (ctx->srvs[i].ctx) {
                ngx_resolve_name_done(ctx->srvs[i].ctx);
            }

            if (ctx->srvs[i].addrs) {
                ngx_resolver_free(r, ctx->srvs[i].addrs->sockaddr);
                ngx_resolver_free(r, ctx->srvs[i].addrs);
            }

            ngx_resolver_free(r, ctx->srvs[i].name.data);
        }

        ngx_resolver_free(r, ctx->srvs);
    }

    if (ctx->state == NGX_AGAIN || ctx->state == NGX_RESOLVE_TIMEDOUT) {

        rn = ctx->node;

        if (rn) {
            p = &rn->waiting;
            w = rn->waiting;

            while (w) {
                if (w == ctx) {
                    *p = w->next;

                    goto done;
                }

                p = &w->next;
                w = w->next;
            }

            ngx_log_error(NGX_LOG_ALERT, r->log, 0,
                          "could not cancel %V resolving", &ctx->name);
        }
    }

done:

    if (ctx->service.len) {
        ngx_resolver_expire(r, &r->srv_rbtree, &r->srv_expire_queue);

    } else {
        ngx_resolver_expire(r, &r->name_rbtree, &r->name_expire_queue);
    }





    if (ctx->event) {
        ngx_resolver_free_locked(r, ctx->event);
    }

    ngx_resolver_free_locked(r, ctx);



    if (r->event->timer_set && ngx_resolver_resend_empty(r)) {
        ngx_del_timer(r->event);
    }
}

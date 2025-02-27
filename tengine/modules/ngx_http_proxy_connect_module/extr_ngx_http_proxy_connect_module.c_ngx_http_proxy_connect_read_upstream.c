
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_17__ ;


struct TYPE_23__ {int pool; TYPE_1__* connection; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_22__ {int temporary; int * start; int * end; int * last; int * pos; } ;
struct TYPE_20__ {int name; TYPE_8__* connection; } ;
struct TYPE_24__ {TYPE_4__ buffer; TYPE_3__* conf; TYPE_2__ peer; } ;
typedef TYPE_6__ ngx_http_proxy_connect_upstream_t ;
struct TYPE_25__ {int send_established_done; int send_established; } ;
typedef TYPE_7__ ngx_http_proxy_connect_ctx_t ;
struct TYPE_26__ {TYPE_17__* read; int log; } ;
typedef TYPE_8__ ngx_connection_t ;
struct TYPE_21__ {int buffer_size; } ;
struct TYPE_19__ {int log; } ;
struct TYPE_18__ {scalar_t__ timedout; } ;


 int NGX_HTTP_BAD_GATEWAY ;
 int NGX_HTTP_GATEWAY_TIME_OUT ;
 int NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_handle_read_event (TYPE_17__*,int ) ;
 TYPE_7__* ngx_http_get_module_ctx (TYPE_5__*,int ) ;
 int ngx_http_proxy_connect_finalize_request (TYPE_5__*,TYPE_6__*,int ) ;
 int ngx_http_proxy_connect_module ;
 scalar_t__ ngx_http_proxy_connect_test_connect (TYPE_8__*) ;
 int ngx_http_proxy_connect_tunnel (TYPE_5__*,int,int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_error (int ,int ,int ,char*,int ) ;
 int * ngx_palloc (int ,int) ;

__attribute__((used)) static void
ngx_http_proxy_connect_read_upstream(ngx_http_request_t *r,
    ngx_http_proxy_connect_upstream_t *u)
{
    ngx_connection_t *c;
    ngx_http_proxy_connect_ctx_t *ctx;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "proxy_connect: upstream read handler");

    ctx = ngx_http_get_module_ctx(r, ngx_http_proxy_connect_module);

    c = u->peer.connection;

    if (c->read->timedout) {
        ngx_log_error(NGX_LOG_ERR, c->log, 0,
                      "proxy_connect: upstream read timed out (peer:%V)",
                      u->peer.name);
        ngx_http_proxy_connect_finalize_request(r, u, NGX_HTTP_GATEWAY_TIME_OUT);
        return;
    }

    if (!ctx->send_established &&
        ngx_http_proxy_connect_test_connect(c) != NGX_OK)
    {
        ngx_http_proxy_connect_finalize_request(r, u, NGX_HTTP_BAD_GATEWAY);
        return;
    }

    if (u->buffer.start == ((void*)0)) {
        u->buffer.start = ngx_palloc(r->pool, u->conf->buffer_size);
        if (u->buffer.start == ((void*)0)) {
            ngx_http_proxy_connect_finalize_request(r, u,
                                               NGX_HTTP_INTERNAL_SERVER_ERROR);
            return;
        }

        u->buffer.pos = u->buffer.start;
        u->buffer.last = u->buffer.start;
        u->buffer.end = u->buffer.start + u->conf->buffer_size;
        u->buffer.temporary = 1;
    }

    if (!ctx->send_established_done) {
        if (ngx_handle_read_event(c->read, 0) != NGX_OK) {
            ngx_http_proxy_connect_finalize_request(r, u,
                                               NGX_HTTP_INTERNAL_SERVER_ERROR);
            return;
        }

        return;
    }

    ngx_http_proxy_connect_tunnel(r, 1, 0);
}

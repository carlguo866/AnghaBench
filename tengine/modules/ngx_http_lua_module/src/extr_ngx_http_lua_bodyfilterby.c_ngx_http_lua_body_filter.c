
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_24__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef int uint16_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_27__ {int pool; int uri; TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_28__ {TYPE_7__* body_filter_chain; } ;
typedef TYPE_3__ ngx_http_lua_main_conf_t ;
struct TYPE_29__ {scalar_t__ (* body_filter_handler ) (TYPE_2__*,TYPE_7__*) ;} ;
typedef TYPE_4__ ngx_http_lua_loc_conf_t ;
struct TYPE_30__ {int busy_bufs; int free_bufs; int context; int * cleanup; scalar_t__ seen_last_in_filter; } ;
typedef TYPE_5__ ngx_http_lua_ctx_t ;
struct TYPE_31__ {int handler; TYPE_5__* data; } ;
typedef TYPE_6__ ngx_http_cleanup_t ;
struct TYPE_32__ {TYPE_24__* buf; struct TYPE_32__* next; } ;
typedef TYPE_7__ ngx_chain_t ;
typedef int ngx_buf_tag_t ;
struct TYPE_26__ {int file_last; int file_pos; int last; int pos; } ;
struct TYPE_25__ {int log; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_LUA_CONTEXT_BODY_FILTER ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 int dd (char*,...) ;
 scalar_t__ ngx_buf_size (TYPE_24__*) ;
 int ngx_chain_update_chains (int ,int ,...) ;
 TYPE_6__* ngx_http_cleanup_add (TYPE_2__*,int ) ;
 TYPE_5__* ngx_http_get_module_ctx (TYPE_2__*,int ) ;
 TYPE_4__* ngx_http_get_module_loc_conf (TYPE_2__*,int ) ;
 TYPE_3__* ngx_http_get_module_main_conf (TYPE_2__*,int ) ;
 TYPE_5__* ngx_http_lua_create_ctx (TYPE_2__*) ;
 int ngx_http_lua_module ;
 int ngx_http_lua_request_cleanup_handler ;
 scalar_t__ ngx_http_next_body_filter (TYPE_2__*,TYPE_7__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int *) ;
 scalar_t__ stub1 (TYPE_2__*,TYPE_7__*) ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_body_filter(ngx_http_request_t *r, ngx_chain_t *in)
{
    ngx_http_lua_loc_conf_t *llcf;
    ngx_http_lua_ctx_t *ctx;
    ngx_int_t rc;
    uint16_t old_context;
    ngx_http_cleanup_t *cln;
    ngx_chain_t *out;
    ngx_http_lua_main_conf_t *lmcf;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua body filter for user lua code, uri \"%V\"", &r->uri);

    if (in == ((void*)0)) {
        return ngx_http_next_body_filter(r, in);
    }

    llcf = ngx_http_get_module_loc_conf(r, ngx_http_lua_module);

    if (llcf->body_filter_handler == ((void*)0)) {
        dd("no body filter handler found");
        return ngx_http_next_body_filter(r, in);
    }

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);

    dd("ctx = %p", ctx);

    if (ctx == ((void*)0)) {
        ctx = ngx_http_lua_create_ctx(r);
        if (ctx == ((void*)0)) {
            return NGX_ERROR;
        }
    }

    if (ctx->seen_last_in_filter) {
        for ( ; in; in = in->next) {
            dd("mark the buf as consumed: %d", (int) ngx_buf_size(in->buf));
            in->buf->pos = in->buf->last;
            in->buf->file_pos = in->buf->file_last;
        }

        return NGX_OK;
    }

    if (ctx->cleanup == ((void*)0)) {
        cln = ngx_http_cleanup_add(r, 0);
        if (cln == ((void*)0)) {
            return NGX_ERROR;
        }

        cln->handler = ngx_http_lua_request_cleanup_handler;
        cln->data = ctx;
        ctx->cleanup = &cln->handler;
    }

    old_context = ctx->context;
    ctx->context = NGX_HTTP_LUA_CONTEXT_BODY_FILTER;

    dd("calling body filter handler");
    rc = llcf->body_filter_handler(r, in);

    dd("calling body filter handler returned %d", (int) rc);

    ctx->context = old_context;

    if (rc != NGX_OK) {
        return NGX_ERROR;
    }

    lmcf = ngx_http_get_module_main_conf(r, ngx_http_lua_module);
    out = lmcf->body_filter_chain;

    if (in == out) {
        return ngx_http_next_body_filter(r, in);
    }

    if (out == ((void*)0)) {


        return NGX_OK;
    }


    rc = ngx_http_next_body_filter(r, out);
    if (rc == NGX_ERROR) {
        return NGX_ERROR;
    }




    ngx_chain_update_chains(

                            &ctx->free_bufs, &ctx->busy_bufs, &out,
                            (ngx_buf_tag_t) &ngx_http_lua_module);

    return rc;
}

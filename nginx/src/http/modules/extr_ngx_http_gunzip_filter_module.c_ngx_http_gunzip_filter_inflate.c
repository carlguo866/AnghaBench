
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
typedef struct TYPE_17__ TYPE_15__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_20__ {int pool; TYPE_2__* connection; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_17__ {scalar_t__ avail_in; scalar_t__ avail_out; int next_out; int * next_in; } ;
struct TYPE_21__ {scalar_t__ flush; int redo; TYPE_5__** last_out; TYPE_15__ zstream; TYPE_6__* out_buf; int * in; TYPE_1__* request; TYPE_7__* in_buf; } ;
typedef TYPE_4__ ngx_http_gunzip_ctx_t ;
struct TYPE_22__ {struct TYPE_22__* next; TYPE_6__* buf; } ;
typedef TYPE_5__ ngx_chain_t ;
struct TYPE_23__ {int flush; int last; } ;
typedef TYPE_6__ ngx_buf_t ;
struct TYPE_24__ {int * pos; } ;
struct TYPE_19__ {int log; } ;
struct TYPE_18__ {int pool; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int Z_BUF_ERROR ;
 scalar_t__ Z_FINISH ;
 scalar_t__ Z_NO_FLUSH ;
 int Z_OK ;
 int Z_STREAM_END ;
 scalar_t__ Z_SYNC_FLUSH ;
 int inflate (TYPE_15__*,scalar_t__) ;
 int inflateReset (TYPE_15__*) ;
 TYPE_5__* ngx_alloc_chain_link (int ) ;
 scalar_t__ ngx_buf_size (TYPE_6__*) ;
 TYPE_6__* ngx_calloc_buf (int ) ;
 scalar_t__ ngx_http_gunzip_filter_inflate_end (TYPE_3__*,TYPE_4__*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,TYPE_7__*,int *) ;
 int ngx_log_debug5 (int ,int ,int ,char*,int *,int ,scalar_t__,scalar_t__,int) ;
 int ngx_log_debug6 (int ,int ,int ,char*,int *,int ,scalar_t__,scalar_t__,scalar_t__,int) ;
 int ngx_log_error (int ,int ,int ,char*,int,...) ;

__attribute__((used)) static ngx_int_t
ngx_http_gunzip_filter_inflate(ngx_http_request_t *r,
    ngx_http_gunzip_ctx_t *ctx)
{
    int rc;
    ngx_buf_t *b;
    ngx_chain_t *cl;

    ngx_log_debug6(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "inflate in: ni:%p no:%p ai:%ud ao:%ud fl:%d redo:%d",
                   ctx->zstream.next_in, ctx->zstream.next_out,
                   ctx->zstream.avail_in, ctx->zstream.avail_out,
                   ctx->flush, ctx->redo);

    rc = inflate(&ctx->zstream, ctx->flush);

    if (rc != Z_OK && rc != Z_STREAM_END && rc != Z_BUF_ERROR) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "inflate() failed: %d, %d", ctx->flush, rc);
        return NGX_ERROR;
    }

    ngx_log_debug5(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "inflate out: ni:%p no:%p ai:%ud ao:%ud rc:%d",
                   ctx->zstream.next_in, ctx->zstream.next_out,
                   ctx->zstream.avail_in, ctx->zstream.avail_out,
                   rc);

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "gunzip in_buf:%p pos:%p",
                   ctx->in_buf, ctx->in_buf->pos);

    if (ctx->zstream.next_in) {
        ctx->in_buf->pos = ctx->zstream.next_in;

        if (ctx->zstream.avail_in == 0) {
            ctx->zstream.next_in = ((void*)0);
        }
    }

    ctx->out_buf->last = ctx->zstream.next_out;

    if (ctx->zstream.avail_out == 0) {



        cl = ngx_alloc_chain_link(r->pool);
        if (cl == ((void*)0)) {
            return NGX_ERROR;
        }

        cl->buf = ctx->out_buf;
        cl->next = ((void*)0);
        *ctx->last_out = cl;
        ctx->last_out = &cl->next;

        ctx->redo = 1;

        return NGX_AGAIN;
    }

    ctx->redo = 0;

    if (ctx->flush == Z_SYNC_FLUSH) {

        ctx->flush = Z_NO_FLUSH;

        cl = ngx_alloc_chain_link(r->pool);
        if (cl == ((void*)0)) {
            return NGX_ERROR;
        }

        b = ctx->out_buf;

        if (ngx_buf_size(b) == 0) {

            b = ngx_calloc_buf(ctx->request->pool);
            if (b == ((void*)0)) {
                return NGX_ERROR;
            }

        } else {
            ctx->zstream.avail_out = 0;
        }

        b->flush = 1;

        cl->buf = b;
        cl->next = ((void*)0);
        *ctx->last_out = cl;
        ctx->last_out = &cl->next;

        return NGX_OK;
    }

    if (ctx->flush == Z_FINISH && ctx->zstream.avail_in == 0) {

        if (rc != Z_STREAM_END) {
            ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                          "inflate() returned %d on response end", rc);
            return NGX_ERROR;
        }

        if (ngx_http_gunzip_filter_inflate_end(r, ctx) != NGX_OK) {
            return NGX_ERROR;
        }

        return NGX_OK;
    }

    if (rc == Z_STREAM_END && ctx->zstream.avail_in > 0) {

        rc = inflateReset(&ctx->zstream);

        if (rc != Z_OK) {
            ngx_log_error(NGX_LOG_ALERT, r->connection->log, 0,
                          "inflateReset() failed: %d", rc);
            return NGX_ERROR;
        }

        ctx->redo = 1;

        return NGX_AGAIN;
    }

    if (ctx->in == ((void*)0)) {

        b = ctx->out_buf;

        if (ngx_buf_size(b) == 0) {
            return NGX_OK;
        }

        cl = ngx_alloc_chain_link(r->pool);
        if (cl == ((void*)0)) {
            return NGX_ERROR;
        }

        ctx->zstream.avail_out = 0;

        cl->buf = b;
        cl->next = ((void*)0);
        *ctx->last_out = cl;
        ctx->last_out = &cl->next;

        return NGX_OK;
    }

    return NGX_AGAIN;
}

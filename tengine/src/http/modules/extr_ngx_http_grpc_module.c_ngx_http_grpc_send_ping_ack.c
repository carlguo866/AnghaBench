
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


typedef int ngx_int_t ;
struct TYPE_14__ {TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_15__ {int length_2; scalar_t__ stream_id_3; scalar_t__ stream_id_2; scalar_t__ stream_id_1; scalar_t__ stream_id_0; int flags; int type; scalar_t__ length_1; scalar_t__ length_0; } ;
typedef TYPE_4__ ngx_http_grpc_frame_t ;
struct TYPE_16__ {int ping_data; TYPE_6__* out; } ;
typedef TYPE_5__ ngx_http_grpc_ctx_t ;
struct TYPE_17__ {TYPE_2__* buf; struct TYPE_17__* next; } ;
typedef TYPE_6__ ngx_chain_t ;
struct TYPE_13__ {scalar_t__ last; } ;
struct TYPE_12__ {int log; } ;


 int NGX_ERROR ;
 int NGX_HTTP_V2_ACK_FLAG ;
 int NGX_HTTP_V2_PING_FRAME ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 scalar_t__ ngx_copy (scalar_t__,int ,int) ;
 TYPE_6__* ngx_http_grpc_get_buf (TYPE_3__*,TYPE_5__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;

__attribute__((used)) static ngx_int_t
ngx_http_grpc_send_ping_ack(ngx_http_request_t *r, ngx_http_grpc_ctx_t *ctx)
{
    ngx_chain_t *cl, **ll;
    ngx_http_grpc_frame_t *f;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "grpc send ping ack");

    for (cl = ctx->out, ll = &ctx->out; cl; cl = cl->next) {
        ll = &cl->next;
    }

    cl = ngx_http_grpc_get_buf(r, ctx);
    if (cl == ((void*)0)) {
        return NGX_ERROR;
    }

    f = (ngx_http_grpc_frame_t *) cl->buf->last;
    cl->buf->last += sizeof(ngx_http_grpc_frame_t);

    f->length_0 = 0;
    f->length_1 = 0;
    f->length_2 = 8;
    f->type = NGX_HTTP_V2_PING_FRAME;
    f->flags = NGX_HTTP_V2_ACK_FLAG;
    f->stream_id_0 = 0;
    f->stream_id_1 = 0;
    f->stream_id_2 = 0;
    f->stream_id_3 = 0;

    cl->buf->last = ngx_copy(cl->buf->last, ctx->ping_data, 8);

    *ll = cl;

    return NGX_OK;
}

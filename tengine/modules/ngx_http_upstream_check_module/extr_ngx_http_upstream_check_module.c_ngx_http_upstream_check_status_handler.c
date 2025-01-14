
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_9__ ;
typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_11__ ;
typedef struct TYPE_26__ TYPE_10__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_33__ {int flag; TYPE_4__* format; } ;
typedef TYPE_6__ ngx_http_upstream_check_status_ctx_t ;
struct TYPE_30__ {int nelts; } ;
struct TYPE_34__ {TYPE_3__ peers; } ;
typedef TYPE_7__ ngx_http_upstream_check_peers_t ;
struct TYPE_35__ {TYPE_4__* format; } ;
typedef TYPE_8__ ngx_http_upstream_check_loc_conf_t ;
struct TYPE_28__ {int len; } ;
struct TYPE_32__ {scalar_t__ content_length_n; void* status; int * content_type_lowcase; TYPE_1__ content_type; int content_type_len; } ;
struct TYPE_36__ {scalar_t__ method; int header_only; TYPE_5__ headers_out; int pool; TYPE_2__* connection; } ;
typedef TYPE_9__ ngx_http_request_t ;
struct TYPE_26__ {int * next; TYPE_11__* buf; } ;
typedef TYPE_10__ ngx_chain_t ;
struct TYPE_27__ {scalar_t__ last; scalar_t__ pos; int last_buf; } ;
typedef TYPE_11__ ngx_buf_t ;
struct TYPE_31__ {int (* output ) (TYPE_11__*,TYPE_7__*,int ) ;TYPE_1__ content_type; } ;
struct TYPE_29__ {int log; } ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HTTP_GET ;
 scalar_t__ NGX_HTTP_HEAD ;
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ;
 scalar_t__ NGX_HTTP_NOT_ALLOWED ;
 void* NGX_HTTP_OK ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 TYPE_7__* check_peers_ctx ;
 int ngx_align (size_t,int) ;
 TYPE_11__* ngx_create_temp_buf (int ,size_t) ;
 scalar_t__ ngx_http_discard_request_body (TYPE_9__*) ;
 TYPE_8__* ngx_http_get_module_loc_conf (TYPE_9__*,int ) ;
 scalar_t__ ngx_http_output_filter (TYPE_9__*,TYPE_10__*) ;
 scalar_t__ ngx_http_send_header (TYPE_9__*) ;
 int ngx_http_upstream_check_module ;
 int ngx_http_upstream_check_status_parse_args (TYPE_9__*,TYPE_6__*) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_pagesize ;
 TYPE_6__* ngx_pcalloc (int ,int) ;
 int stub1 (TYPE_11__*,TYPE_7__*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_check_status_handler(ngx_http_request_t *r)
{
    size_t buffer_size;
    ngx_int_t rc;
    ngx_buf_t *b;
    ngx_chain_t out;
    ngx_http_upstream_check_peers_t *peers;
    ngx_http_upstream_check_loc_conf_t *uclcf;
    ngx_http_upstream_check_status_ctx_t *ctx;

    if (r->method != NGX_HTTP_GET && r->method != NGX_HTTP_HEAD) {
        return NGX_HTTP_NOT_ALLOWED;
    }

    rc = ngx_http_discard_request_body(r);

    if (rc != NGX_OK) {
        return rc;
    }

    uclcf = ngx_http_get_module_loc_conf(r, ngx_http_upstream_check_module);

    ctx = ngx_pcalloc(r->pool, sizeof(ngx_http_upstream_check_status_ctx_t));
    if (ctx == ((void*)0)) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    ngx_http_upstream_check_status_parse_args(r, ctx);

    if (ctx->format == ((void*)0)) {
        ctx->format = uclcf->format;
    }

    r->headers_out.content_type_len = ctx->format->content_type.len;
    r->headers_out.content_type = ctx->format->content_type;
    r->headers_out.content_type_lowcase = ((void*)0);

    if (r->method == NGX_HTTP_HEAD) {
        r->headers_out.status = NGX_HTTP_OK;

        rc = ngx_http_send_header(r);

        if (rc == NGX_ERROR || rc > NGX_OK || r->header_only) {
            return rc;
        }
    }

    peers = check_peers_ctx;
    if (peers == ((void*)0)) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "http upstream check module can not find any check "
                      "server, make sure you've added the check servers");

        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }


    buffer_size = peers->peers.nelts * ngx_pagesize / 4;
    buffer_size = ngx_align(buffer_size, ngx_pagesize) + ngx_pagesize;

    b = ngx_create_temp_buf(r->pool, buffer_size);
    if (b == ((void*)0)) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    out.buf = b;
    out.next = ((void*)0);

    ctx->format->output(b, peers, ctx->flag);

    r->headers_out.status = NGX_HTTP_OK;
    r->headers_out.content_length_n = b->last - b->pos;

    if (r->headers_out.content_length_n == 0) {
        r->header_only = 1;
    }

    b->last_buf = 1;

    rc = ngx_http_send_header(r);

    if (rc == NGX_ERROR || rc > NGX_OK || r->header_only) {
        return rc;
    }

    return ngx_http_output_filter(r, &out);
}

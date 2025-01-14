
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_20__ {int pool; scalar_t__ request_body_in_file_only; scalar_t__ request_body_no_buffering; TYPE_1__* connection; TYPE_6__* request_body; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_21__ {scalar_t__ rest; TYPE_7__* bufs; TYPE_4__* temp_file; int free; TYPE_2__* buf; } ;
typedef TYPE_6__ ngx_http_request_body_t ;
struct TYPE_22__ {TYPE_8__* buf; struct TYPE_22__* next; } ;
typedef TYPE_7__ ngx_chain_t ;
struct TYPE_23__ {int in_file; scalar_t__ file_pos; scalar_t__ file_last; TYPE_3__* file; scalar_t__ pos; scalar_t__ last; int start; int temporary; } ;
typedef TYPE_8__ ngx_buf_t ;
struct TYPE_18__ {scalar_t__ offset; } ;
struct TYPE_19__ {TYPE_3__ file; } ;
struct TYPE_17__ {scalar_t__ last; scalar_t__ end; } ;
struct TYPE_16__ {int log; } ;


 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_LOG_DEBUG_EVENT ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_chain_add_copy (int ,TYPE_7__**,TYPE_7__*) ;
 TYPE_7__* ngx_chain_get_free_buf (int ,int *) ;
 scalar_t__ ngx_http_write_request_body (TYPE_5__*) ;
 int ngx_log_debug7 (int ,int ,int ,char*,int ,int,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ngx_memzero (TYPE_8__*,int) ;

ngx_int_t
ngx_http_request_body_save_filter(ngx_http_request_t *r, ngx_chain_t *in)
{
    ngx_buf_t *b;
    ngx_chain_t *cl;
    ngx_http_request_body_t *rb;

    rb = r->request_body;
    if (ngx_chain_add_copy(r->pool, &rb->bufs, in) != NGX_OK) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    if (r->request_body_no_buffering) {
        return NGX_OK;
    }

    if (rb->rest > 0) {

        if (rb->buf && rb->buf->last == rb->buf->end
            && ngx_http_write_request_body(r) != NGX_OK)
        {
            return NGX_HTTP_INTERNAL_SERVER_ERROR;
        }

        return NGX_OK;
    }



    if (rb->temp_file || r->request_body_in_file_only) {

        if (ngx_http_write_request_body(r) != NGX_OK) {
            return NGX_HTTP_INTERNAL_SERVER_ERROR;
        }

        if (rb->temp_file->file.offset != 0) {

            cl = ngx_chain_get_free_buf(r->pool, &rb->free);
            if (cl == ((void*)0)) {
                return NGX_HTTP_INTERNAL_SERVER_ERROR;
            }

            b = cl->buf;

            ngx_memzero(b, sizeof(ngx_buf_t));

            b->in_file = 1;
            b->file_last = rb->temp_file->file.offset;
            b->file = &rb->temp_file->file;

            rb->bufs = cl;
        }
    }

    return NGX_OK;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_14__ ;


typedef scalar_t__ ssize_t ;
typedef scalar_t__ off_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_19__ {int read_event_handler; scalar_t__ request_body_no_buffering; int request_length; TYPE_3__* request_body; TYPE_5__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_20__ {scalar_t__ rest; int (* post_handler ) (TYPE_2__*) ;TYPE_1__* buf; int * busy; } ;
typedef TYPE_3__ ngx_http_request_body_t ;
struct TYPE_21__ {int client_body_timeout; } ;
typedef TYPE_4__ ngx_http_core_loc_conf_t ;
struct TYPE_22__ {scalar_t__ (* recv ) (TYPE_5__*,scalar_t__,size_t) ;int error; TYPE_14__* read; int log; } ;
typedef TYPE_5__ ngx_connection_t ;
struct TYPE_23__ {int * next; TYPE_1__* buf; } ;
typedef TYPE_6__ ngx_chain_t ;
struct TYPE_18__ {scalar_t__ last; scalar_t__ end; scalar_t__ pos; scalar_t__ start; } ;
struct TYPE_17__ {scalar_t__ timer_set; int ready; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HTTP_BAD_REQUEST ;
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_INFO ;
 scalar_t__ NGX_OK ;
 int ngx_add_timer (TYPE_14__*,int ) ;
 int ngx_del_timer (TYPE_14__*) ;
 scalar_t__ ngx_handle_read_event (TYPE_14__*,int ) ;
 int ngx_http_block_reading ;
 int ngx_http_core_module ;
 TYPE_4__* ngx_http_get_module_loc_conf (TYPE_2__*,int ) ;
 scalar_t__ ngx_http_request_body_filter (TYPE_2__*,TYPE_6__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,scalar_t__) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 scalar_t__ stub1 (TYPE_5__*,scalar_t__,size_t) ;
 int stub2 (TYPE_2__*) ;

__attribute__((used)) static ngx_int_t
ngx_http_do_read_client_request_body(ngx_http_request_t *r)
{
    off_t rest;
    size_t size;
    ssize_t n;
    ngx_int_t rc;
    ngx_chain_t out;
    ngx_connection_t *c;
    ngx_http_request_body_t *rb;
    ngx_http_core_loc_conf_t *clcf;

    c = r->connection;
    rb = r->request_body;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http read client request body");

    for ( ;; ) {
        for ( ;; ) {
            if (rb->buf->last == rb->buf->end) {

                if (rb->buf->pos != rb->buf->last) {



                    out.buf = rb->buf;
                    out.next = ((void*)0);

                    rc = ngx_http_request_body_filter(r, &out);

                    if (rc != NGX_OK) {
                        return rc;
                    }

                } else {



                    rc = ngx_http_request_body_filter(r, ((void*)0));

                    if (rc != NGX_OK) {
                        return rc;
                    }
                }

                if (rb->busy != ((void*)0)) {
                    if (r->request_body_no_buffering) {
                        if (c->read->timer_set) {
                            ngx_del_timer(c->read);
                        }

                        if (ngx_handle_read_event(c->read, 0) != NGX_OK) {
                            return NGX_HTTP_INTERNAL_SERVER_ERROR;
                        }

                        return NGX_AGAIN;
                    }

                    return NGX_HTTP_INTERNAL_SERVER_ERROR;
                }

                rb->buf->pos = rb->buf->start;
                rb->buf->last = rb->buf->start;
            }

            size = rb->buf->end - rb->buf->last;
            rest = rb->rest - (rb->buf->last - rb->buf->pos);

            if ((off_t) size > rest) {
                size = (size_t) rest;
            }

            n = c->recv(c, rb->buf->last, size);

            ngx_log_debug1(NGX_LOG_DEBUG_HTTP, c->log, 0,
                           "http client request body recv %z", n);

            if (n == NGX_AGAIN) {
                break;
            }

            if (n == 0) {
                ngx_log_error(NGX_LOG_INFO, c->log, 0,
                              "client prematurely closed connection");
            }

            if (n == 0 || n == NGX_ERROR) {
                c->error = 1;
                return NGX_HTTP_BAD_REQUEST;
            }

            rb->buf->last += n;
            r->request_length += n;

            if (n == rest) {


                out.buf = rb->buf;
                out.next = ((void*)0);

                rc = ngx_http_request_body_filter(r, &out);

                if (rc != NGX_OK) {
                    return rc;
                }
            }

            if (rb->rest == 0) {
                break;
            }

            if (rb->buf->last < rb->buf->end) {
                break;
            }
        }

        ngx_log_debug1(NGX_LOG_DEBUG_HTTP, c->log, 0,
                       "http client request body rest %O", rb->rest);

        if (rb->rest == 0) {
            break;
        }

        if (!c->read->ready) {

            if (r->request_body_no_buffering
                && rb->buf->pos != rb->buf->last)
            {


                out.buf = rb->buf;
                out.next = ((void*)0);

                rc = ngx_http_request_body_filter(r, &out);

                if (rc != NGX_OK) {
                    return rc;
                }
            }

            clcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);
            ngx_add_timer(c->read, clcf->client_body_timeout);

            if (ngx_handle_read_event(c->read, 0) != NGX_OK) {
                return NGX_HTTP_INTERNAL_SERVER_ERROR;
            }

            return NGX_AGAIN;
        }
    }

    if (c->read->timer_set) {
        ngx_del_timer(c->read);
    }

    if (!r->request_body_no_buffering) {
        r->read_event_handler = ngx_http_block_reading;
        rb->post_handler(r);
    }

    return NGX_OK;
}

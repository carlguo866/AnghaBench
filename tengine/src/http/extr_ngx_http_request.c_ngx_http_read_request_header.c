
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_17__ {TYPE_1__* header_in; TYPE_5__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_18__ {int client_header_timeout; } ;
typedef TYPE_3__ ngx_http_core_srv_conf_t ;
struct TYPE_19__ {int timer_set; scalar_t__ ready; } ;
typedef TYPE_4__ ngx_event_t ;
struct TYPE_20__ {scalar_t__ (* recv ) (TYPE_5__*,scalar_t__,scalar_t__) ;int error; int received; TYPE_8__* log; scalar_t__ async_enable; TYPE_4__* read; } ;
typedef TYPE_5__ ngx_connection_t ;
struct TYPE_21__ {char* action; } ;
struct TYPE_16__ {scalar_t__ last; scalar_t__ pos; scalar_t__ end; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_BAD_REQUEST ;
 int NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_LOG_INFO ;
 scalar_t__ NGX_OK ;
 int ngx_add_timer (TYPE_4__*,int ) ;
 scalar_t__ ngx_handle_read_event (TYPE_4__*,int ) ;
 int ngx_http_close_request (TYPE_2__*,int ) ;
 int ngx_http_core_module ;
 int ngx_http_finalize_request (TYPE_2__*,int ) ;
 TYPE_3__* ngx_http_get_module_srv_conf (TYPE_2__*,int ) ;
 int ngx_log_error (int ,TYPE_8__*,int ,char*) ;
 scalar_t__ stub1 (TYPE_5__*,scalar_t__,scalar_t__) ;
 scalar_t__ stub2 (TYPE_5__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static ssize_t
ngx_http_read_request_header(ngx_http_request_t *r)
{
    ssize_t n;
    ngx_event_t *rev;
    ngx_connection_t *c;
    ngx_http_core_srv_conf_t *cscf;

    c = r->connection;
    rev = c->read;

    n = r->header_in->last - r->header_in->pos;

    if (n > 0) {
        return n;
    }







            if (rev->ready) {
                n = c->recv(c, r->header_in->last,
                            r->header_in->end - r->header_in->last);
            } else {
                 n = NGX_AGAIN;
            }




    if (n == NGX_AGAIN) {
        if (!rev->timer_set) {
            cscf = ngx_http_get_module_srv_conf(r, ngx_http_core_module);
            ngx_add_timer(rev, cscf->client_header_timeout);
        }

        if (ngx_handle_read_event(rev, 0) != NGX_OK) {
            ngx_http_close_request(r, NGX_HTTP_INTERNAL_SERVER_ERROR);
            return NGX_ERROR;
        }

        return NGX_AGAIN;
    }

    if (n == 0) {
        ngx_log_error(NGX_LOG_INFO, c->log, 0,
                      "client prematurely closed connection");
    }

    if (n == 0 || n == NGX_ERROR) {
        c->error = 1;
        c->log->action = "reading client request headers";

        ngx_http_finalize_request(r, NGX_HTTP_BAD_REQUEST);
        return NGX_ERROR;
    }

    r->header_in->last += n;




    return n;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ safari; scalar_t__ msie6; } ;
struct TYPE_10__ {int method; int request_body_in_file_only; int request_body_in_persistent_file; int request_body_in_clean_file; scalar_t__ content_handler; TYPE_4__* connection; scalar_t__ keepalive; TYPE_1__ headers_in; int request_body_in_single_buf; int request_body_file_log_level; struct TYPE_10__* main; int loc_conf; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_11__ {int limit_except; scalar_t__ client_body_in_file_only; scalar_t__ keepalive_timeout; scalar_t__ keepalive_requests; int keepalive_disable; scalar_t__ handler; int tcp_nopush; int client_body_in_single_buffer; scalar_t__ sendfile; int error_log; int limit_except_loc_conf; } ;
typedef TYPE_3__ ngx_http_core_loc_conf_t ;
struct TYPE_13__ {int flags; } ;
struct TYPE_12__ {int sendfile; scalar_t__ requests; int tcp_nopush; } ;


 int NGX_HTTP_KEEPALIVE_DISABLE_MSIE6 ;
 int NGX_HTTP_KEEPALIVE_DISABLE_SAFARI ;
 int NGX_HTTP_POST ;
 scalar_t__ NGX_HTTP_REQUEST_BODY_FILE_CLEAN ;
 int NGX_IO_SENDFILE ;
 int NGX_LOG_NOTICE ;
 int NGX_LOG_WARN ;
 int NGX_TCP_NOPUSH_DISABLED ;
 int ngx_http_core_module ;
 TYPE_3__* ngx_http_get_module_loc_conf (TYPE_2__*,int ) ;
 TYPE_5__ ngx_io ;
 int ngx_set_connection_log (TYPE_4__*,int ) ;

void
ngx_http_update_location_config(ngx_http_request_t *r)
{
    ngx_http_core_loc_conf_t *clcf;

    clcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);

    if (r->method & clcf->limit_except) {
        r->loc_conf = clcf->limit_except_loc_conf;
        clcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);
    }

    if (r == r->main) {
        ngx_set_connection_log(r->connection, clcf->error_log);
    }

    if ((ngx_io.flags & NGX_IO_SENDFILE) && clcf->sendfile) {
        r->connection->sendfile = 1;

    } else {
        r->connection->sendfile = 0;
    }

    if (clcf->client_body_in_file_only) {
        r->request_body_in_file_only = 1;
        r->request_body_in_persistent_file = 1;
        r->request_body_in_clean_file =
            clcf->client_body_in_file_only == NGX_HTTP_REQUEST_BODY_FILE_CLEAN;
        r->request_body_file_log_level = NGX_LOG_NOTICE;

    } else {
        r->request_body_file_log_level = NGX_LOG_WARN;
    }

    r->request_body_in_single_buf = clcf->client_body_in_single_buffer;

    if (r->keepalive) {
        if (clcf->keepalive_timeout == 0) {
            r->keepalive = 0;

        } else if (r->connection->requests >= clcf->keepalive_requests) {
            r->keepalive = 0;

        } else if (r->headers_in.msie6
                   && r->method == NGX_HTTP_POST
                   && (clcf->keepalive_disable
                       & NGX_HTTP_KEEPALIVE_DISABLE_MSIE6))
        {




            r->keepalive = 0;

        } else if (r->headers_in.safari
                   && (clcf->keepalive_disable
                       & NGX_HTTP_KEEPALIVE_DISABLE_SAFARI))
        {





            r->keepalive = 0;
        }
    }

    if (!clcf->tcp_nopush) {

        r->connection->tcp_nopush = NGX_TCP_NOPUSH_DISABLED;
    }

    if (clcf->handler) {
        r->content_handler = clcf->handler;
    }
}

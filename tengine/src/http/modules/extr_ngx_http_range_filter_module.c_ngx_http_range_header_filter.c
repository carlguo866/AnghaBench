
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_46__ TYPE_9__ ;
typedef struct TYPE_45__ TYPE_8__ ;
typedef struct TYPE_44__ TYPE_7__ ;
typedef struct TYPE_43__ TYPE_6__ ;
typedef struct TYPE_42__ TYPE_5__ ;
typedef struct TYPE_41__ TYPE_4__ ;
typedef struct TYPE_40__ TYPE_3__ ;
typedef struct TYPE_39__ TYPE_2__ ;
typedef struct TYPE_38__ TYPE_1__ ;
typedef struct TYPE_37__ TYPE_19__ ;
typedef struct TYPE_36__ TYPE_14__ ;
typedef struct TYPE_35__ TYPE_13__ ;
typedef struct TYPE_34__ TYPE_12__ ;
typedef struct TYPE_33__ TYPE_10__ ;


typedef int u_char ;
typedef TYPE_10__* time_t ;
typedef int ngx_uint_t ;
struct TYPE_33__ {int len; char* data; } ;
typedef TYPE_10__ ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_44__ {int len; } ;
struct TYPE_46__ {scalar_t__ status; int content_length_n; TYPE_19__* accept_ranges; int headers; TYPE_7__ status_line; int content_offset; TYPE_10__* last_modified_time; TYPE_5__* etag; } ;
struct TYPE_41__ {TYPE_3__* if_range; TYPE_2__* range; } ;
struct TYPE_34__ {scalar_t__ http_version; TYPE_9__ headers_out; scalar_t__ single_range; int pool; TYPE_6__* connection; TYPE_4__ headers_in; int allow_ranges; int subrequest_ranges; struct TYPE_34__* main; } ;
typedef TYPE_12__ ngx_http_request_t ;
struct TYPE_45__ {int nelts; } ;
struct TYPE_35__ {TYPE_8__ ranges; int offset; } ;
typedef TYPE_13__ ngx_http_range_filter_ctx_t ;
struct TYPE_36__ {int max_ranges; } ;
typedef TYPE_14__ ngx_http_core_loc_conf_t ;
struct TYPE_43__ {int log; } ;
struct TYPE_42__ {TYPE_10__ value; } ;
struct TYPE_40__ {TYPE_10__ value; } ;
struct TYPE_38__ {int len; int data; } ;
struct TYPE_39__ {TYPE_1__ value; } ;
struct TYPE_37__ {int hash; int value; int key; } ;



 scalar_t__ NGX_HTTP_OK ;
 scalar_t__ NGX_HTTP_PARTIAL_CONTENT ;

 scalar_t__ NGX_HTTP_VERSION_10 ;
 int NGX_LOG_DEBUG_HTTP ;

 int ngx_http_core_module ;
 TYPE_14__* ngx_http_get_module_loc_conf (TYPE_12__*,int ) ;
 int ngx_http_next_header_filter (TYPE_12__*) ;
 int ngx_http_range_body_filter_module ;
 int ngx_http_range_multipart_header (TYPE_12__*,TYPE_13__*) ;
 int ngx_http_range_not_satisfiable (TYPE_12__*) ;
 int ngx_http_range_parse (TYPE_12__*,TYPE_13__*,int) ;
 int ngx_http_range_singlepart_header (TYPE_12__*,TYPE_13__*) ;
 int ngx_http_set_ctx (TYPE_12__*,TYPE_13__*,int ) ;
 TYPE_19__* ngx_list_push (int *) ;
 int ngx_log_debug2 (int ,int ,int ,char*,TYPE_10__*,TYPE_10__*) ;
 TYPE_10__* ngx_parse_http_time (char*,int) ;
 TYPE_13__* ngx_pcalloc (int ,int) ;
 int ngx_str_set (int *,char*) ;
 scalar_t__ ngx_strncasecmp (int ,int *,int) ;
 scalar_t__ ngx_strncmp (char*,char*,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_range_header_filter(ngx_http_request_t *r)
{
    time_t if_range_time;
    ngx_str_t *if_range, *etag;
    ngx_uint_t ranges;
    ngx_http_core_loc_conf_t *clcf;
    ngx_http_range_filter_ctx_t *ctx;

    if (r->http_version < NGX_HTTP_VERSION_10
        || r->headers_out.status != NGX_HTTP_OK
        || (r != r->main && !r->subrequest_ranges)
        || r->headers_out.content_length_n == -1
        || !r->allow_ranges)
    {
        return ngx_http_next_header_filter(r);
    }

    clcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);

    if (clcf->max_ranges == 0) {
        return ngx_http_next_header_filter(r);
    }

    if (r->headers_in.range == ((void*)0)
        || r->headers_in.range->value.len < 7
        || ngx_strncasecmp(r->headers_in.range->value.data,
                           (u_char *) "bytes=", 6)
           != 0)
    {
        goto next_filter;
    }

    if (r->headers_in.if_range) {

        if_range = &r->headers_in.if_range->value;

        if (if_range->len >= 2 && if_range->data[if_range->len - 1] == '"') {

            if (r->headers_out.etag == ((void*)0)) {
                goto next_filter;
            }

            etag = &r->headers_out.etag->value;

            ngx_log_debug2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                           "http ir:%V etag:%V", if_range, etag);

            if (if_range->len != etag->len
                || ngx_strncmp(if_range->data, etag->data, etag->len) != 0)
            {
                goto next_filter;
            }

            goto parse;
        }

        if (r->headers_out.last_modified_time == (time_t) -1) {
            goto next_filter;
        }

        if_range_time = ngx_parse_http_time(if_range->data, if_range->len);

        ngx_log_debug2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "http ir:%T lm:%T",
                       if_range_time, r->headers_out.last_modified_time);

        if (if_range_time != r->headers_out.last_modified_time) {
            goto next_filter;
        }
    }

parse:

    ctx = ngx_pcalloc(r->pool, sizeof(ngx_http_range_filter_ctx_t));
    if (ctx == ((void*)0)) {
        return 130;
    }

    ctx->offset = r->headers_out.content_offset;

    ranges = r->single_range ? 1 : clcf->max_ranges;

    switch (ngx_http_range_parse(r, ctx, ranges)) {

    case 128:
        ngx_http_set_ctx(r, ctx, ngx_http_range_body_filter_module);

        r->headers_out.status = NGX_HTTP_PARTIAL_CONTENT;
        r->headers_out.status_line.len = 0;

        if (ctx->ranges.nelts == 1) {
            return ngx_http_range_singlepart_header(r, ctx);
        }

        return ngx_http_range_multipart_header(r, ctx);

    case 129:
        return ngx_http_range_not_satisfiable(r);

    case 130:
        return 130;

    default:
        break;
    }

next_filter:

    r->headers_out.accept_ranges = ngx_list_push(&r->headers_out.headers);
    if (r->headers_out.accept_ranges == ((void*)0)) {
        return 130;
    }

    r->headers_out.accept_ranges->hash = 1;
    ngx_str_set(&r->headers_out.accept_ranges->key, "Accept-Ranges");
    ngx_str_set(&r->headers_out.accept_ranges->value, "bytes");

    return ngx_http_next_header_filter(r);
}

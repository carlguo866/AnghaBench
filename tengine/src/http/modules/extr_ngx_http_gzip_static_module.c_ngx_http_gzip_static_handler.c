
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_49__ TYPE_9__ ;
typedef struct TYPE_48__ TYPE_8__ ;
typedef struct TYPE_47__ TYPE_7__ ;
typedef struct TYPE_46__ TYPE_6__ ;
typedef struct TYPE_45__ TYPE_5__ ;
typedef struct TYPE_44__ TYPE_4__ ;
typedef struct TYPE_43__ TYPE_3__ ;
typedef struct TYPE_42__ TYPE_2__ ;
typedef struct TYPE_41__ TYPE_1__ ;
typedef struct TYPE_40__ TYPE_13__ ;
typedef struct TYPE_39__ TYPE_12__ ;
typedef struct TYPE_38__ TYPE_11__ ;
typedef struct TYPE_37__ TYPE_10__ ;


typedef char u_char ;
typedef int ngx_uint_t ;
struct TYPE_44__ {int hash; int value; int key; } ;
typedef TYPE_4__ ngx_table_elt_t ;
struct TYPE_45__ {char* len; int data; } ;
typedef TYPE_5__ ngx_str_t ;
struct TYPE_46__ {int err; int fd; int is_directio; scalar_t__ size; int mtime; int is_file; scalar_t__ is_dir; int failed; int events; int errors; int min_uses; int valid; int directio; int read_ahead; } ;
typedef TYPE_6__ ngx_open_file_info_t ;
struct TYPE_47__ {char* action; } ;
typedef TYPE_7__ ngx_log_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_43__ {TYPE_4__* content_encoding; int headers; int last_modified_time; scalar_t__ content_length_n; int status; } ;
struct TYPE_41__ {char* data; int len; } ;
struct TYPE_48__ {int method; int gzip_vary; int root_tested; struct TYPE_48__* main; scalar_t__ header_only; int pool; TYPE_3__ headers_out; int error_page; TYPE_2__* connection; TYPE_1__ uri; } ;
typedef TYPE_8__ ngx_http_request_t ;
struct TYPE_49__ {scalar_t__ enable; } ;
typedef TYPE_9__ ngx_http_gzip_static_conf_t ;
struct TYPE_37__ {int open_file_cache; int open_file_cache_events; int open_file_cache_errors; int open_file_cache_min_uses; int open_file_cache_valid; int directio; int read_ahead; int gzip_vary; } ;
typedef TYPE_10__ ngx_http_core_loc_conf_t ;
typedef int ngx_file_t ;
struct TYPE_38__ {int * next; TYPE_12__* buf; } ;
typedef TYPE_11__ ngx_chain_t ;
struct TYPE_39__ {int in_file; int last_buf; int last_in_chain; TYPE_13__* file; scalar_t__ file_last; scalar_t__ file_pos; } ;
typedef TYPE_12__ ngx_buf_t ;
struct TYPE_42__ {TYPE_7__* log; } ;
struct TYPE_40__ {int fd; int directio; TYPE_7__* log; TYPE_5__ name; } ;


 scalar_t__ NGX_DECLINED ;






 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_GET ;
 scalar_t__ NGX_HTTP_GZIP_STATIC_OFF ;
 scalar_t__ NGX_HTTP_GZIP_STATIC_ON ;
 int NGX_HTTP_HEAD ;
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ;
 scalar_t__ NGX_HTTP_NOT_FOUND ;
 int NGX_HTTP_OK ;
 int NGX_LOG_CRIT ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 TYPE_12__* ngx_calloc_buf (int ) ;
 int ngx_http_core_module ;
 scalar_t__ ngx_http_discard_request_body (TYPE_8__*) ;
 void* ngx_http_get_module_loc_conf (TYPE_8__*,int ) ;
 scalar_t__ ngx_http_gzip_ok (TYPE_8__*) ;
 int ngx_http_gzip_static_module ;
 char* ngx_http_map_uri_to_path (TYPE_8__*,TYPE_5__*,size_t*,int) ;
 scalar_t__ ngx_http_output_filter (TYPE_8__*,TYPE_11__*) ;
 scalar_t__ ngx_http_send_header (TYPE_8__*) ;
 scalar_t__ ngx_http_set_content_type (TYPE_8__*) ;
 scalar_t__ ngx_http_set_disable_symlinks (TYPE_8__*,TYPE_10__*,TYPE_5__*,TYPE_6__*) ;
 scalar_t__ ngx_http_set_etag (TYPE_8__*) ;
 TYPE_4__* ngx_list_push (int *) ;
 int ngx_log_debug0 (int ,TYPE_7__*,int ,char*) ;
 int ngx_log_debug1 (int ,TYPE_7__*,int ,char*,int) ;
 int ngx_log_error (int ,TYPE_7__*,int,char*,int,...) ;
 int ngx_memzero (TYPE_6__*,int) ;
 scalar_t__ ngx_open_cached_file (int ,TYPE_5__*,TYPE_6__*,int ) ;
 TYPE_13__* ngx_pcalloc (int ,int) ;
 int ngx_str_set (int *,char*) ;

__attribute__((used)) static ngx_int_t
ngx_http_gzip_static_handler(ngx_http_request_t *r)
{
    u_char *p;
    size_t root;
    ngx_str_t path;
    ngx_int_t rc;
    ngx_uint_t level;
    ngx_log_t *log;
    ngx_buf_t *b;
    ngx_chain_t out;
    ngx_table_elt_t *h;
    ngx_open_file_info_t of;
    ngx_http_core_loc_conf_t *clcf;
    ngx_http_gzip_static_conf_t *gzcf;

    if (!(r->method & (NGX_HTTP_GET|NGX_HTTP_HEAD))) {
        return NGX_DECLINED;
    }

    if (r->uri.data[r->uri.len - 1] == '/') {
        return NGX_DECLINED;
    }

    gzcf = ngx_http_get_module_loc_conf(r, ngx_http_gzip_static_module);

    if (gzcf->enable == NGX_HTTP_GZIP_STATIC_OFF) {
        return NGX_DECLINED;
    }

    if (gzcf->enable == NGX_HTTP_GZIP_STATIC_ON) {
        rc = ngx_http_gzip_ok(r);

    } else {

        rc = NGX_OK;
    }

    clcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);

    if (!clcf->gzip_vary && rc != NGX_OK) {
        return NGX_DECLINED;
    }

    log = r->connection->log;

    p = ngx_http_map_uri_to_path(r, &path, &root, sizeof(".gz") - 1);
    if (p == ((void*)0)) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    *p++ = '.';
    *p++ = 'g';
    *p++ = 'z';
    *p = '\0';

    path.len = p - path.data;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, log, 0,
                   "http filename: \"%s\"", path.data);

    ngx_memzero(&of, sizeof(ngx_open_file_info_t));

    of.read_ahead = clcf->read_ahead;
    of.directio = clcf->directio;
    of.valid = clcf->open_file_cache_valid;
    of.min_uses = clcf->open_file_cache_min_uses;
    of.errors = clcf->open_file_cache_errors;
    of.events = clcf->open_file_cache_events;

    if (ngx_http_set_disable_symlinks(r, clcf, &path, &of) != NGX_OK) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    if (ngx_open_cached_file(clcf->open_file_cache, &path, &of, r->pool)
        != NGX_OK)
    {
        switch (of.err) {

        case 0:
            return NGX_HTTP_INTERNAL_SERVER_ERROR;

        case 129:
        case 128:
        case 130:

            return NGX_DECLINED;

        case 133:





            level = NGX_LOG_ERR;
            break;

        default:

            level = NGX_LOG_CRIT;
            break;
        }

        ngx_log_error(level, log, of.err,
                      "%s \"%s\" failed", of.failed, path.data);

        return NGX_DECLINED;
    }

    if (gzcf->enable == NGX_HTTP_GZIP_STATIC_ON) {
        r->gzip_vary = 1;

        if (rc != NGX_OK) {
            return NGX_DECLINED;
        }
    }

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, log, 0, "http static fd: %d", of.fd);

    if (of.is_dir) {
        ngx_log_debug0(NGX_LOG_DEBUG_HTTP, log, 0, "http dir");
        return NGX_DECLINED;
    }



    if (!of.is_file) {
        ngx_log_error(NGX_LOG_CRIT, log, 0,
                      "\"%s\" is not a regular file", path.data);

        return NGX_HTTP_NOT_FOUND;
    }



    r->root_tested = !r->error_page;

    rc = ngx_http_discard_request_body(r);

    if (rc != NGX_OK) {
        return rc;
    }

    log->action = "sending response to client";

    r->headers_out.status = NGX_HTTP_OK;
    r->headers_out.content_length_n = of.size;
    r->headers_out.last_modified_time = of.mtime;

    if (ngx_http_set_etag(r) != NGX_OK) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    if (ngx_http_set_content_type(r) != NGX_OK) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    h = ngx_list_push(&r->headers_out.headers);
    if (h == ((void*)0)) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    h->hash = 1;
    ngx_str_set(&h->key, "Content-Encoding");
    ngx_str_set(&h->value, "gzip");
    r->headers_out.content_encoding = h;



    b = ngx_calloc_buf(r->pool);
    if (b == ((void*)0)) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    b->file = ngx_pcalloc(r->pool, sizeof(ngx_file_t));
    if (b->file == ((void*)0)) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    rc = ngx_http_send_header(r);

    if (rc == NGX_ERROR || rc > NGX_OK || r->header_only) {
        return rc;
    }

    b->file_pos = 0;
    b->file_last = of.size;

    b->in_file = b->file_last ? 1 : 0;
    b->last_buf = (r == r->main) ? 1 : 0;
    b->last_in_chain = 1;

    b->file->fd = of.fd;
    b->file->name = path;
    b->file->log = log;
    b->file->directio = of.is_directio;

    out.buf = b;
    out.next = ((void*)0);

    return ngx_http_output_filter(r, &out);
}

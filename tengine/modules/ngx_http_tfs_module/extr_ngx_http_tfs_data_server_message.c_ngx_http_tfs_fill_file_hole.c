
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_8__ {int log; int pool; TYPE_1__* tfs_peer_servers; } ;
typedef TYPE_2__ ngx_http_tfs_t ;
struct TYPE_9__ {int temporary; int * pos; int * start; int * last; int * end; } ;
typedef TYPE_3__ ngx_buf_t ;
struct TYPE_7__ {TYPE_3__ body_buffer; } ;


 scalar_t__ NGX_ERROR ;
 size_t NGX_HTTP_TFS_DATA_SERVER ;
 int NGX_HTTP_TFS_MAX_FRAGMENT_SIZE ;
 size_t NGX_HTTP_TFS_ZERO_BUF_SIZE ;
 int NGX_LOG_DEBUG ;
 scalar_t__ NGX_OK ;
 TYPE_3__* ngx_create_temp_buf (int ,size_t) ;
 scalar_t__ ngx_http_tfs_copy_body_buffer (TYPE_2__*,size_t,int *) ;
 int ngx_log_error (int ,int ,int ,char*,size_t,...) ;
 int ngx_memzero (int *,size_t) ;
 size_t ngx_min (size_t,size_t) ;
 int * ngx_palloc (int ,int) ;

ngx_int_t
ngx_http_tfs_fill_file_hole(ngx_http_tfs_t *t, size_t file_hole_size)
{
    size_t size;
    ngx_int_t rc;
    ngx_buf_t *b, *zero_buf;

    b = &t->tfs_peer_servers[NGX_HTTP_TFS_DATA_SERVER].body_buffer;
    if (b->start == ((void*)0)) {
        b->start = ngx_palloc(t->pool, NGX_HTTP_TFS_MAX_FRAGMENT_SIZE);
        if (b->start == ((void*)0)) {
            return NGX_ERROR;
        }

        b->pos = b->start;
        b->last = b->start;
        b->end = b->start + NGX_HTTP_TFS_MAX_FRAGMENT_SIZE;
        b->temporary = 1;
    }

    size = b->end - b->last;


    if (file_hole_size <= size) {
        ngx_memzero(b->last, file_hole_size);
        rc = ngx_http_tfs_copy_body_buffer(t, file_hole_size, b->last);
        if (rc == NGX_ERROR) {
            return rc;
        }

        b->pos += file_hole_size;
        b->last += file_hole_size;

        ngx_log_error(NGX_LOG_DEBUG, t->log, 0,
                      "fill file hole once, size: %uL", file_hole_size);

    } else {
        zero_buf = ngx_create_temp_buf(t->pool, NGX_HTTP_TFS_ZERO_BUF_SIZE);
        if (zero_buf == ((void*)0)) {
            return NGX_ERROR;
        }
        ngx_memzero(zero_buf->start, NGX_HTTP_TFS_ZERO_BUF_SIZE);

        while (file_hole_size > 0) {
            size = ngx_min(NGX_HTTP_TFS_ZERO_BUF_SIZE, file_hole_size);
            rc = ngx_http_tfs_copy_body_buffer(t, size, zero_buf->pos);
            if (rc == NGX_ERROR) {
                return rc;
            }

            file_hole_size -= size;

            ngx_log_error(NGX_LOG_DEBUG, t->log, 0,
                          "fill file hole, size: %z, remain hole size: %uL",
                          size, file_hole_size);
        }
    }

    return NGX_OK;
}

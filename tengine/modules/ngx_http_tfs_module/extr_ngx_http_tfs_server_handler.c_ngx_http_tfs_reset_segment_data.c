
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_9__ {scalar_t__ segment_count; size_t segment_index; scalar_t__ curr_batch_count; TYPE_5__* segment_data; } ;
struct TYPE_7__ {int curr_lookup_cache; } ;
struct TYPE_10__ {TYPE_3__ file; TYPE_1__ block_cache_ctx; } ;
typedef TYPE_4__ ngx_http_tfs_t ;
struct TYPE_8__ {int * ds_addrs; } ;
struct TYPE_11__ {scalar_t__ ds_index; scalar_t__ ds_retry; TYPE_2__ block_info; int cache_hit; } ;
typedef TYPE_5__ ngx_http_tfs_segment_data_t ;


 int NGX_HTTP_TFS_LOCAL_BLOCK_CACHE ;
 scalar_t__ NGX_HTTP_TFS_MAX_BATCH_COUNT ;
 int NGX_HTTP_TFS_NO_BLOCK_CACHE ;

void
ngx_http_tfs_reset_segment_data(ngx_http_tfs_t *t)
{
    uint32_t block_count, i;
    ngx_http_tfs_segment_data_t *segment_data;


    t->block_cache_ctx.curr_lookup_cache = NGX_HTTP_TFS_LOCAL_BLOCK_CACHE;

    block_count = t->file.segment_count - t->file.segment_index;
    if (block_count > NGX_HTTP_TFS_MAX_BATCH_COUNT) {
        block_count = NGX_HTTP_TFS_MAX_BATCH_COUNT;
    }

    segment_data = &t->file.segment_data[t->file.segment_index];
    for (i = 0; i < block_count; i++, segment_data++) {
        segment_data->cache_hit = NGX_HTTP_TFS_NO_BLOCK_CACHE;
        segment_data->block_info.ds_addrs = ((void*)0);
        segment_data->ds_retry = 0;
        segment_data->ds_index = 0;
    }

    t->file.curr_batch_count = 0;
}

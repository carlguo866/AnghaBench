
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_15__ ;
typedef struct TYPE_24__ TYPE_14__ ;
typedef struct TYPE_23__ TYPE_13__ ;
typedef struct TYPE_22__ TYPE_12__ ;
typedef struct TYPE_21__ TYPE_11__ ;
typedef struct TYPE_20__ TYPE_10__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int u_char ;
typedef int ngx_uint_t ;
typedef int ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_30__ {int open_mode; } ;
struct TYPE_26__ {int block_id; } ;
struct TYPE_27__ {TYPE_1__ file; } ;
struct TYPE_28__ {TYPE_2__ fsname; } ;
struct TYPE_31__ {int name_server_addr_text; int log; TYPE_5__ file; int pool; int block_cache_ctx; int name_server_addr; TYPE_3__ r_ctx; TYPE_8__* tfs_peer; scalar_t__ header; } ;
typedef TYPE_6__ ngx_http_tfs_t ;
struct TYPE_21__ {int ds_count; void* lease_id; void* version; TYPE_14__* ds_addrs; } ;
struct TYPE_29__ {int block_id; } ;
struct TYPE_32__ {scalar_t__ ds_retry; TYPE_11__ block_info; TYPE_4__ segment_info; } ;
typedef TYPE_7__ ngx_http_tfs_segment_data_t ;
struct TYPE_25__ {int * pos; } ;
struct TYPE_33__ {TYPE_15__ body_buffer; } ;
typedef TYPE_8__ ngx_http_tfs_peer_connection_t ;
struct TYPE_34__ {int ds_count; int block_id; } ;
typedef TYPE_9__ ngx_http_tfs_ns_block_info_response_t ;
typedef int ngx_http_tfs_inet_t ;
struct TYPE_20__ {int type; } ;
typedef TYPE_10__ ngx_http_tfs_header_t ;
typedef TYPE_11__ ngx_http_tfs_block_info_t ;
struct TYPE_22__ {int ds_count; int * ds_addrs; } ;
typedef TYPE_12__ ngx_http_tfs_block_cache_value_t ;
struct TYPE_23__ {int block_id; int ns_addr; } ;
typedef TYPE_13__ ngx_http_tfs_block_cache_key_t ;
typedef int int64_t ;
typedef void* int32_t ;
struct TYPE_24__ {int ip; int port; } ;


 int NGX_ERROR ;
 int NGX_HTTP_TFS_EXIT_GENERAL_ERROR ;
 int NGX_HTTP_TFS_OPEN_MODE_READ ;
 int NGX_HTTP_TFS_OPEN_MODE_STAT ;
 int NGX_HTTP_TFS_OPEN_MODE_WRITE ;

 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 int ngx_http_tfs_block_cache_insert (int *,int ,int ,TYPE_13__*,TYPE_12__*) ;
 int ngx_http_tfs_status_message (TYPE_15__*,int *,int ) ;
 int ngx_log_debug5 (int ,int ,int ,char*,int *,int ,int,void*,void*) ;
 TYPE_14__* ngx_pcalloc (int ,int) ;
 int ngx_str_set (int *,char*) ;

ngx_int_t
ngx_http_tfs_parse_block_info_message(ngx_http_tfs_t *t,
    ngx_http_tfs_segment_data_t *segment_data)
{
    u_char *p;
    uint16_t type;
    uint32_t ds_count;
    ngx_str_t err_msg;
    ngx_uint_t i;
    ngx_http_tfs_header_t *header;
    ngx_http_tfs_block_info_t *block_info;
    ngx_http_tfs_block_cache_key_t key;
    ngx_http_tfs_block_cache_value_t value;
    ngx_http_tfs_peer_connection_t *tp;
    ngx_http_tfs_ns_block_info_response_t *resp;

    header = (ngx_http_tfs_header_t *) t->header;
    tp = t->tfs_peer;
    type = header->type;

    switch (type) {
    case 128:
        ngx_str_set(&err_msg, "get block info (name server)");
        return ngx_http_tfs_status_message(&tp->body_buffer, &err_msg, t->log);
    }

    resp = (ngx_http_tfs_ns_block_info_response_t *) tp->body_buffer.pos;

    p = tp->body_buffer.pos + sizeof(ngx_http_tfs_ns_block_info_response_t);

    if (t->file.open_mode & NGX_HTTP_TFS_OPEN_MODE_WRITE) {
        if (resp->ds_count <= 3) {
            return NGX_HTTP_TFS_EXIT_GENERAL_ERROR;
        }


        ds_count = resp->ds_count - 3;

    } else {
        ds_count = resp->ds_count;
    }

    t->r_ctx.fsname.file.block_id = resp->block_id;

    segment_data->segment_info.block_id = resp->block_id;
    block_info = &segment_data->block_info;

    block_info->ds_count = ds_count;
    block_info->ds_addrs = ngx_pcalloc(t->pool,
                                       sizeof(ngx_http_tfs_inet_t) * ds_count);
    if (block_info->ds_addrs == ((void*)0)) {
        return NGX_ERROR;
    }

    for (i = 0; i < ds_count; i++) {
        block_info->ds_addrs[i].ip = *(uint32_t *) p;
        block_info->ds_addrs[i].port = *(uint32_t *) (p + sizeof(uint32_t));

        p += sizeof(uint32_t) * 2;
    }


    if (t->file.open_mode & NGX_HTTP_TFS_OPEN_MODE_READ
        || t->file.open_mode & NGX_HTTP_TFS_OPEN_MODE_STAT)
    {
        key.ns_addr = *((uint64_t*)(&t->name_server_addr));
        key.block_id = resp->block_id;
        value.ds_count = block_info->ds_count;
        value.ds_addrs = (uint64_t *)block_info->ds_addrs;
        ngx_http_tfs_block_cache_insert(&t->block_cache_ctx,
                                        t->pool, t->log, &key, &value);
    }

    if (t->file.open_mode & NGX_HTTP_TFS_OPEN_MODE_WRITE) {

        p += sizeof(uint64_t);

        block_info->version = *((int32_t *) p);
        p += sizeof(int64_t);

        block_info->lease_id = *((int32_t *) p);
    }

    segment_data->ds_retry = 0;

    ngx_log_debug5(NGX_LOG_DEBUG_HTTP, t->log, 0,
                   "get block info from "
                   "nameserver: %V, block id: %uD, ds count: %uD, "
                   "version: %D, lease id: %D",
                   &t->name_server_addr_text, resp->block_id,
                   block_info->ds_count,
                   block_info->version, block_info->lease_id);

    return NGX_OK;
}

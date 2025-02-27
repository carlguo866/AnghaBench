
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ngx_uint_t ;
struct TYPE_8__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_9__ {int offset; scalar_t__ msg_mask; int epoch; int start_timestamp; } ;
typedef TYPE_3__ ngx_rtmp_flv_ctx_t ;
typedef int ngx_int_t ;
typedef int ngx_file_t ;
struct TYPE_7__ {int log; } ;


 int NGX_LOG_DEBUG_RTMP ;
 int NGX_OK ;
 int ngx_current_msec ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int ngx_rtmp_flv_module ;
 TYPE_3__* ngx_rtmp_get_module_ctx (TYPE_2__*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_flv_seek(ngx_rtmp_session_t *s, ngx_file_t *f, ngx_uint_t timestamp)
{
    ngx_rtmp_flv_ctx_t *ctx;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_flv_module);

    if (ctx == ((void*)0)) {
        return NGX_OK;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                  "flv: seek timestamp=%ui", timestamp);

    ctx->start_timestamp = timestamp;
    ctx->epoch = ngx_current_msec;
    ctx->offset = -1;
    ctx->msg_mask = 0;

    return NGX_OK;
}

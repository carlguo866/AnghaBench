
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


struct TYPE_20__ {TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_21__ {struct TYPE_21__* next; } ;
typedef TYPE_4__ ngx_rtmp_live_stream_t ;
struct TYPE_22__ {scalar_t__ publishing; int silent; TYPE_2__* stream; TYPE_3__* session; struct TYPE_22__* next; } ;
typedef TYPE_5__ ngx_rtmp_live_ctx_t ;
struct TYPE_23__ {int play_restart; TYPE_2__* free_streams; int idle_streams; } ;
typedef TYPE_6__ ngx_rtmp_live_app_conf_t ;
typedef int ngx_rtmp_close_stream_t ;
typedef int ngx_int_t ;
struct TYPE_19__ {struct TYPE_19__* next; int name; TYPE_5__* ctx; scalar_t__ active; scalar_t__ publishing; } ;
struct TYPE_18__ {int log; } ;


 int NGX_LOG_DEBUG_RTMP ;
 int next_close_stream (TYPE_3__*,int *) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int ngx_rtmp_finalize_session (TYPE_3__*) ;
 TYPE_6__* ngx_rtmp_get_module_app_conf (TYPE_3__*,int ) ;
 TYPE_5__* ngx_rtmp_get_module_ctx (TYPE_3__*,int ) ;
 TYPE_4__** ngx_rtmp_live_get_stream (TYPE_3__*,int ,int ) ;
 int ngx_rtmp_live_module ;
 int ngx_rtmp_live_stop (TYPE_3__*) ;
 int ngx_rtmp_send_status (TYPE_3__*,char*,char*,char*) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_live_close_stream(ngx_rtmp_session_t *s, ngx_rtmp_close_stream_t *v)
{
    ngx_rtmp_session_t *ss;
    ngx_rtmp_live_ctx_t *ctx, **cctx, *pctx;
    ngx_rtmp_live_stream_t **stream;
    ngx_rtmp_live_app_conf_t *lacf;

    lacf = ngx_rtmp_get_module_app_conf(s, ngx_rtmp_live_module);
    if (lacf == ((void*)0)) {
        goto next;
    }

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_live_module);
    if (ctx == ((void*)0)) {
        goto next;
    }

    if (ctx->stream == ((void*)0)) {
        ngx_log_debug0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "live: not joined");
        goto next;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "live: leave '%s'", ctx->stream->name);

    if (ctx->stream->publishing && ctx->publishing) {
        ctx->stream->publishing = 0;
    }

    for (cctx = &ctx->stream->ctx; *cctx; cctx = &(*cctx)->next) {
        if (*cctx == ctx) {
            *cctx = ctx->next;
            break;
        }
    }

    if (ctx->publishing || ctx->stream->active) {
        ngx_rtmp_live_stop(s);
    }

    if (ctx->publishing) {
        ngx_rtmp_send_status(s, "NetStream.Unpublish.Success",
                             "status", "Stop publishing");
        if (!lacf->idle_streams) {
            for (pctx = ctx->stream->ctx; pctx; pctx = pctx->next) {
                if (pctx->publishing == 0) {
                    ss = pctx->session;
                    ngx_log_debug0(NGX_LOG_DEBUG_RTMP, ss->connection->log, 0,
                                   "live: no publisher");
                    ngx_rtmp_finalize_session(ss);
                }
            }
        }
    }

    if (ctx->stream->ctx) {
        ctx->stream = ((void*)0);
        goto next;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "live: delete empty stream '%s'",
                   ctx->stream->name);

    stream = ngx_rtmp_live_get_stream(s, ctx->stream->name, 0);
    if (stream == ((void*)0)) {
        goto next;
    }
    *stream = (*stream)->next;

    ctx->stream->next = lacf->free_streams;
    lacf->free_streams = ctx->stream;
    ctx->stream = ((void*)0);

    if (!ctx->silent && !ctx->publishing && !lacf->play_restart) {
        ngx_rtmp_send_status(s, "NetStream.Play.Stop", "status", "Stop live");
    }

next:
    return next_close_stream(s, v);
}

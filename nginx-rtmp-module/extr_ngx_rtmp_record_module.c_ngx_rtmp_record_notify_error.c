
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_rtmp_session_t ;
struct TYPE_6__ {int failed; TYPE_3__* conf; } ;
typedef TYPE_2__ ngx_rtmp_record_rec_ctx_t ;
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_7__ {TYPE_1__ id; int notify; } ;
typedef TYPE_3__ ngx_rtmp_record_app_conf_t ;


 int ngx_rtmp_send_status (int *,char*,char*,char*) ;

__attribute__((used)) static void
ngx_rtmp_record_notify_error(ngx_rtmp_session_t *s,
                             ngx_rtmp_record_rec_ctx_t *rctx)
{
    ngx_rtmp_record_app_conf_t *rracf = rctx->conf;

    rctx->failed = 1;

    if (!rracf->notify) {
        return;
    }

    ngx_rtmp_send_status(s, "NetStream.Record.Failed", "error",
                         rracf->id.data ? (char *) rracf->id.data : "");
}

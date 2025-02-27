
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_rtmp_session_t ;
typedef int ngx_rtmp_dash_frag_t ;
struct TYPE_5__ {int frag; int * frags; } ;
typedef TYPE_1__ ngx_rtmp_dash_ctx_t ;
struct TYPE_6__ {int winfrags; } ;
typedef TYPE_2__ ngx_rtmp_dash_app_conf_t ;
typedef int ngx_int_t ;


 int ngx_rtmp_dash_module ;
 TYPE_2__* ngx_rtmp_get_module_app_conf (int *,int ) ;
 TYPE_1__* ngx_rtmp_get_module_ctx (int *,int ) ;

__attribute__((used)) static ngx_rtmp_dash_frag_t *
ngx_rtmp_dash_get_frag(ngx_rtmp_session_t *s, ngx_int_t n)
{
    ngx_rtmp_dash_ctx_t *ctx;
    ngx_rtmp_dash_app_conf_t *dacf;

    dacf = ngx_rtmp_get_module_app_conf(s, ngx_rtmp_dash_module);
    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_dash_module);

    return &ctx->frags[(ctx->frag + n) % (dacf->winfrags * 2 + 1)];
}

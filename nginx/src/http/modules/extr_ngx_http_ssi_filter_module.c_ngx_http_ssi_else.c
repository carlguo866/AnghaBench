
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_7__ {int output; int conditional; scalar_t__ output_chosen; } ;
typedef TYPE_2__ ngx_http_ssi_ctx_t ;
struct TYPE_8__ {TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_6__ {int log; } ;


 int NGX_HTTP_SSI_COND_ELSE ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;

__attribute__((used)) static ngx_int_t
ngx_http_ssi_else(ngx_http_request_t *r, ngx_http_ssi_ctx_t *ctx,
    ngx_str_t **params)
{
    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "ssi else");

    if (ctx->output_chosen) {
        ctx->output = 0;
    } else {
        ctx->output = 1;
    }

    ctx->conditional = NGX_HTTP_SSI_COND_ELSE;

    return NGX_OK;
}

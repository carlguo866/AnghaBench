
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_9__ {scalar_t__ flags; int length; } ;
struct TYPE_10__ {int settings_ack; TYPE_1__* connection; TYPE_2__ state; } ;
typedef TYPE_3__ ngx_http_v2_connection_t ;
struct TYPE_8__ {int log; } ;


 scalar_t__ NGX_HTTP_V2_ACK_FLAG ;
 int NGX_HTTP_V2_SETTINGS_PARAM_SIZE ;
 int NGX_HTTP_V2_SIZE_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_INFO ;
 int * ngx_http_v2_connection_error (TYPE_3__*,int ) ;
 int * ngx_http_v2_state_complete (TYPE_3__*,int *,int *) ;
 int * ngx_http_v2_state_settings_params (TYPE_3__*,int *,int *) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_error (int ,int ,int ,char*,...) ;

__attribute__((used)) static u_char *
ngx_http_v2_state_settings(ngx_http_v2_connection_t *h2c, u_char *pos,
    u_char *end)
{
    if (h2c->state.flags == NGX_HTTP_V2_ACK_FLAG) {

        if (h2c->state.length != 0) {
            ngx_log_error(NGX_LOG_INFO, h2c->connection->log, 0,
                          "client sent SETTINGS frame with the ACK flag "
                          "and nonzero length");

            return ngx_http_v2_connection_error(h2c, NGX_HTTP_V2_SIZE_ERROR);
        }

        h2c->settings_ack = 1;

        return ngx_http_v2_state_complete(h2c, pos, end);
    }

    if (h2c->state.length % NGX_HTTP_V2_SETTINGS_PARAM_SIZE) {
        ngx_log_error(NGX_LOG_INFO, h2c->connection->log, 0,
                      "client sent SETTINGS frame with incorrect length %uz",
                      h2c->state.length);

        return ngx_http_v2_connection_error(h2c, NGX_HTTP_V2_SIZE_ERROR);
    }

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, h2c->connection->log, 0,
                   "http2 SETTINGS frame");

    return ngx_http_v2_state_settings_params(h2c, pos, end);
}

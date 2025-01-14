
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ ngx_uint_t ;
struct TYPE_13__ {TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_14__ {scalar_t__ ft_type; TYPE_2__* write_co_ctx; } ;
typedef TYPE_4__ ngx_http_lua_socket_tcp_upstream_t ;
typedef int lua_State ;
struct TYPE_12__ {int * cleanup; } ;
struct TYPE_11__ {int log; } ;


 int NGX_LOG_DEBUG_HTTP ;
 int ngx_http_lua_socket_prepare_error_retvals (TYPE_3__*,TYPE_4__*,int *,scalar_t__) ;
 int ngx_http_lua_socket_tcp_finalize (TYPE_3__*,TYPE_4__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;

__attribute__((used)) static int
ngx_http_lua_socket_conn_error_retval_handler(ngx_http_request_t *r,
    ngx_http_lua_socket_tcp_upstream_t *u, lua_State *L)
{
    ngx_uint_t ft_type;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua tcp socket error retval handler");

    if (u->write_co_ctx) {
        u->write_co_ctx->cleanup = ((void*)0);
    }

    ngx_http_lua_socket_tcp_finalize(r, u);

    ft_type = u->ft_type;
    u->ft_type = 0;
    return ngx_http_lua_socket_prepare_error_retvals(r, u, L, ft_type);
}

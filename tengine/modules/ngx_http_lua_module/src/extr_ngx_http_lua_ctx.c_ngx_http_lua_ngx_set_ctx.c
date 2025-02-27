
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_http_request_t ;
typedef int ngx_http_lua_ctx_t ;
typedef int lua_State ;


 int luaL_error (int *,char*) ;
 int * ngx_http_get_module_ctx (int *,int ) ;
 int * ngx_http_lua_get_req (int *) ;
 int ngx_http_lua_module ;
 int ngx_http_lua_ngx_set_ctx_helper (int *,int *,int *,int) ;

int
ngx_http_lua_ngx_set_ctx(lua_State *L)
{
    ngx_http_request_t *r;
    ngx_http_lua_ctx_t *ctx;

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "no request found");
    }

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);
    if (ctx == ((void*)0)) {
        return luaL_error(L, "no request ctx found");
    }

    return ngx_http_lua_ngx_set_ctx_helper(L, r, ctx, 3);
}

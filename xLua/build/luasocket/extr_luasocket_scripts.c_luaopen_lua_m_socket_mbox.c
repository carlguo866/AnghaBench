
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_loadstring (int *,int ) ;
 int lua_m_socket_mbox ;

int luaopen_lua_m_socket_mbox(lua_State *L) {
    luaL_loadstring(L, lua_m_socket_mbox);
    return 1;
}

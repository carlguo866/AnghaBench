
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_register (int *,int *,int ) ;
 int lua_newtable (int *) ;
 int lua_setfield (int *,int,char*) ;
 int vlclua_strings_reg ;

void luaopen_strings( lua_State *L )
{
    lua_newtable( L );
    luaL_register( L, ((void*)0), vlclua_strings_reg );
    lua_setfield( L, -2, "strings" );
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_call (int *,int,int) ;
 int lua_isnil (int *,int) ;
 int lua_lessthan (int *,int,int) ;
 int lua_pop (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_toboolean (int *,int) ;

__attribute__((used)) static int sort_comp(lua_State *L, int a, int b)
{
  if (!lua_isnil(L, 2)) {
    int res;
    lua_pushvalue(L, 2);
    lua_pushvalue(L, a-1);
    lua_pushvalue(L, b-2);
    lua_call(L, 2, 1);
    res = lua_toboolean(L, -1);
    lua_pop(L, 1);
    return res;
  } else {
    return lua_lessthan(L, a, b);
  }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_OPLT ;
 int luaL_argcheck (int *,int,int,char*) ;
 scalar_t__ lua_compare (int *,int,int,int ) ;
 int lua_gettop (int *) ;
 int lua_pushvalue (int *,int) ;

__attribute__((used)) static int math_max (lua_State *L) {
  int n = lua_gettop(L);
  int imax = 1;
  int i;
  luaL_argcheck(L, n >= 1, 1, "value expected");
  for (i = 2; i <= n; i++) {
    if (lua_compare(L, imax, i, LUA_OPLT))
      imax = i;
  }
  lua_pushvalue(L, imax);
  return 1;
}

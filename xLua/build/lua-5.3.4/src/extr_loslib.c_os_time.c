
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct tm {int tm_isdst; void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
typedef int lua_State ;
typedef scalar_t__ l_timet ;


 int LUA_TTABLE ;
 int getboolfield (int *,char*) ;
 void* getfield (int *,char*,int,int) ;
 int l_pushtime (int *,scalar_t__) ;
 int luaL_checktype (int *,int,int ) ;
 int luaL_error (int *,char*) ;
 scalar_t__ lua_isnoneornil (int *,int) ;
 int lua_settop (int *,int) ;
 scalar_t__ mktime (struct tm*) ;
 int setallfields (int *,struct tm*) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static int os_time (lua_State *L) {
  time_t t;
  if (lua_isnoneornil(L, 1))
    t = time(((void*)0));
  else {
    struct tm ts;
    luaL_checktype(L, 1, LUA_TTABLE);
    lua_settop(L, 1);
    ts.tm_sec = getfield(L, "sec", 0, 0);
    ts.tm_min = getfield(L, "min", 0, 0);
    ts.tm_hour = getfield(L, "hour", 12, 0);
    ts.tm_mday = getfield(L, "day", -1, 0);
    ts.tm_mon = getfield(L, "month", -1, 1);
    ts.tm_year = getfield(L, "year", -1, 1900);
    ts.tm_isdst = getboolfield(L, "isdst");
    t = mktime(&ts);
    setallfields(L, &ts);
  }
  if (t != (time_t)(l_timet)t || t == (time_t)(-1))
    luaL_error(L, "time result cannot be represented in this installation");
  l_pushtime(L, t);
  return 1;
}

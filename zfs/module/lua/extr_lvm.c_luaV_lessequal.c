
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int TValue ;


 int TM_LE ;
 int TM_LT ;
 int call_orderTM (int *,int const*,int const*,int ) ;
 scalar_t__ l_strcmp (int ,int ) ;
 int luaG_ordererror (int *,int const*,int const*) ;
 int luai_numle (int *,int ,int ) ;
 int nvalue (int const*) ;
 int rawtsvalue (int const*) ;
 scalar_t__ ttisnumber (int const*) ;
 scalar_t__ ttisstring (int const*) ;

int luaV_lessequal (lua_State *L, const TValue *l, const TValue *r) {
  int res;
  if (ttisnumber(l) && ttisnumber(r))
    return luai_numle(L, nvalue(l), nvalue(r));
  else if (ttisstring(l) && ttisstring(r))
    return l_strcmp(rawtsvalue(l), rawtsvalue(r)) <= 0;
  else if ((res = call_orderTM(L, l, r, TM_LE)) >= 0)
    return res;
  else if ((res = call_orderTM(L, r, l, TM_LT)) < 0)
    luaG_ordererror(L, l, r);
  return !res;
}

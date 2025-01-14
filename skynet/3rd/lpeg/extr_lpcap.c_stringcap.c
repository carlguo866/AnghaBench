
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int luaL_Buffer ;
struct TYPE_15__ {TYPE_4__* cap; int L; } ;
struct TYPE_14__ {int idx; } ;
struct TYPE_11__ {scalar_t__ s; scalar_t__ e; } ;
struct TYPE_12__ {TYPE_4__* cp; TYPE_1__ s; } ;
struct TYPE_13__ {TYPE_2__ u; scalar_t__ isstring; } ;
typedef TYPE_3__ StrAux ;
typedef TYPE_4__ Capture ;
typedef TYPE_5__ CapState ;


 int MAXSTRCAPS ;
 int addonestring (int *,TYPE_5__*,char*) ;
 int getstrcaps (TYPE_5__*,TYPE_3__*,int ) ;
 int luaL_addchar (int *,char const) ;
 int luaL_addlstring (int *,scalar_t__,scalar_t__) ;
 int luaL_error (int ,char*,int) ;
 char* lua_tolstring (int ,int ,size_t*) ;
 int updatecache (TYPE_5__*,int ) ;

__attribute__((used)) static void stringcap (luaL_Buffer *b, CapState *cs) {
  StrAux cps[MAXSTRCAPS];
  int n;
  size_t len, i;
  const char *fmt;
  fmt = lua_tolstring(cs->L, updatecache(cs, cs->cap->idx), &len);
  n = getstrcaps(cs, cps, 0) - 1;
  for (i = 0; i < len; i++) {
    if (fmt[i] != '%')
      luaL_addchar(b, fmt[i]);
    else if (fmt[++i] < '0' || fmt[i] > '9')
      luaL_addchar(b, fmt[i]);
    else {
      int l = fmt[i] - '0';
      if (l > n)
        luaL_error(cs->L, "invalid capture index (%d)", l);
      else if (cps[l].isstring)
        luaL_addlstring(b, cps[l].u.s.s, cps[l].u.s.e - cps[l].u.s.s);
      else {
        Capture *curr = cs->cap;
        cs->cap = cps[l].u.cp;
        if (!addonestring(b, cs, "capture"))
          luaL_error(cs->L, "no values in capture index %d", l);
        cs->cap = curr;
      }
    }
  }
}

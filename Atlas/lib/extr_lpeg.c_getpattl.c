
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int getpatt (int *,int,int*) ;

__attribute__((used)) static int getpattl (lua_State *L, int idx) {
  int size;
  getpatt(L, idx, &size);
  return size;
}

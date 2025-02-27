
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int dolibrary (int *,char const*) ;
 int dostring (int *,char const*,char*) ;
 int lua_assert (int) ;

__attribute__((used)) static int runargs (lua_State *L, char **argv, int n) {
  int i;
  for (i = 1; i < n; i++) {
    if (argv[i] == ((void*)0)) continue;
    lua_assert(argv[i][0] == '-');
    switch (argv[i][1]) {
      case 'e': {
        const char *chunk = argv[i] + 2;
        if (*chunk == '\0') chunk = argv[++i];
        lua_assert(chunk != ((void*)0));
        if (dostring(L, chunk, "=(command line)") != 0)
          return 1;
        break;
      }
      case 'l': {
        const char *filename = argv[i] + 2;
        if (*filename == '\0') filename = argv[++i];
        lua_assert(filename != ((void*)0));
        if (dolibrary(L, filename))
          return 1;
        break;
      }
      default: break;
    }
  }
  return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int VLC_CACHE_DIR ;
 char* config_GetUserDir (int ) ;
 int free (char*) ;
 int lua_pushstring (int *,char*) ;

__attribute__((used)) static int vlclua_cachedir( lua_State *L )
{
    char *dir = config_GetUserDir( VLC_CACHE_DIR );
    lua_pushstring( L, dir );
    free( dir );
    return 1;
}

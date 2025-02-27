
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SQLITE_DENY ;
 int SQLITE_OK ;
 int SQLITE_PRAGMA ;
 scalar_t__ sqlite3_stricmp (char*,char const*) ;
 scalar_t__ sqlite3_strnicmp (char*,char const*,int) ;

__attribute__((used)) static int block_debug_pragmas(
  void *Notused,
  int eCode,
  const char *zArg1,
  const char *zArg2,
  const char *zArg3,
  const char *zArg4
){
  if( eCode==SQLITE_PRAGMA
   && (sqlite3_strnicmp("vdbe_", zArg1, 5)==0
        || sqlite3_stricmp("parser_trace", zArg1)==0)
  ){
    return SQLITE_DENY;
  }
  return SQLITE_OK;
}

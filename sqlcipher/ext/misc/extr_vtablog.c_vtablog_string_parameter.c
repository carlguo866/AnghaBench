
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* sqlite3_mprintf (char*,...) ;
 scalar_t__ strlen (char const*) ;
 int vtablog_dequote (char*) ;
 char* vtablog_parameter (char const*,int,char const*) ;
 int vtablog_trim_whitespace (char*) ;

__attribute__((used)) static int vtablog_string_parameter(
  char **pzErr,
  const char *zParam,
  const char *zArg,
  char **pzVal
){
  const char *zValue;
  zValue = vtablog_parameter(zParam,(int)strlen(zParam),zArg);
  if( zValue==0 ) return 0;
  if( *pzVal ){
    *pzErr = sqlite3_mprintf("more than one '%s' parameter", zParam);
    return 1;
  }
  *pzVal = sqlite3_mprintf("%s", zValue);
  if( *pzVal==0 ){
    *pzErr = sqlite3_mprintf("out of memory");
    return 1;
  }
  vtablog_trim_whitespace(*pzVal);
  vtablog_dequote(*pzVal);
  return 0;
}

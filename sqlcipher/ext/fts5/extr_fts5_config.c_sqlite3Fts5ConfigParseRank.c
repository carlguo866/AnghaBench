
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int assert (int) ;
 char* fts5ConfigSkipArgs (char const*) ;
 char* fts5ConfigSkipBareword (char const*) ;
 char* fts5ConfigSkipWhitespace (char const*) ;
 int memcpy (char*,char const*,int) ;
 char* sqlite3Fts5MallocZero (int*,int) ;
 int sqlite3_free (char*) ;

int sqlite3Fts5ConfigParseRank(
  const char *zIn,
  char **pzRank,
  char **pzRankArgs
){
  const char *p = zIn;
  const char *pRank;
  char *zRank = 0;
  char *zRankArgs = 0;
  int rc = SQLITE_OK;

  *pzRank = 0;
  *pzRankArgs = 0;

  if( p==0 ){
    rc = SQLITE_ERROR;
  }else{
    p = fts5ConfigSkipWhitespace(p);
    pRank = p;
    p = fts5ConfigSkipBareword(p);

    if( p ){
      zRank = sqlite3Fts5MallocZero(&rc, 1 + p - pRank);
      if( zRank ) memcpy(zRank, pRank, p-pRank);
    }else{
      rc = SQLITE_ERROR;
    }

    if( rc==SQLITE_OK ){
      p = fts5ConfigSkipWhitespace(p);
      if( *p!='(' ) rc = SQLITE_ERROR;
      p++;
    }
    if( rc==SQLITE_OK ){
      const char *pArgs;
      p = fts5ConfigSkipWhitespace(p);
      pArgs = p;
      if( *p!=')' ){
        p = fts5ConfigSkipArgs(p);
        if( p==0 ){
          rc = SQLITE_ERROR;
        }else{
          zRankArgs = sqlite3Fts5MallocZero(&rc, 1 + p - pArgs);
          if( zRankArgs ) memcpy(zRankArgs, pArgs, p-pArgs);
        }
      }
    }
  }

  if( rc!=SQLITE_OK ){
    sqlite3_free(zRank);
    assert( zRankArgs==0 );
  }else{
    *pzRank = zRank;
    *pzRankArgs = zRankArgs;
  }
  return rc;
}

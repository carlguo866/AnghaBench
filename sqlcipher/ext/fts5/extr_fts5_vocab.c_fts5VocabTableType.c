
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FTS5_VOCAB_COL ;
 int FTS5_VOCAB_INSTANCE ;
 int FTS5_VOCAB_ROW ;
 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int sqlite3Fts5Dequote (char*) ;
 char* sqlite3Fts5Strndup (int*,char const*,int) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char*) ;
 scalar_t__ sqlite3_stricmp (char*,char*) ;

__attribute__((used)) static int fts5VocabTableType(const char *zType, char **pzErr, int *peType){
  int rc = SQLITE_OK;
  char *zCopy = sqlite3Fts5Strndup(&rc, zType, -1);
  if( rc==SQLITE_OK ){
    sqlite3Fts5Dequote(zCopy);
    if( sqlite3_stricmp(zCopy, "col")==0 ){
      *peType = FTS5_VOCAB_COL;
    }else

    if( sqlite3_stricmp(zCopy, "row")==0 ){
      *peType = FTS5_VOCAB_ROW;
    }else
    if( sqlite3_stricmp(zCopy, "instance")==0 ){
      *peType = FTS5_VOCAB_INSTANCE;
    }else
    {
      *pzErr = sqlite3_mprintf("fts5vocab: unknown table type: %Q", zCopy);
      rc = SQLITE_ERROR;
    }
    sqlite3_free(zCopy);
  }

  return rc;
}

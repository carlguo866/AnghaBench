
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_8__ {scalar_t__ bKey; scalar_t__ zExpr; void* bDesc; } ;
struct TYPE_7__ {int nCol; scalar_t__ zWhere; TYPE_2__* aCol; } ;
typedef TYPE_1__ CidxIndex ;
typedef int CidxCursor ;
typedef TYPE_2__ CidxColumn ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int cidxFinalize (int*,int *) ;
 int cidxFreeIndex (TYPE_1__*) ;
 scalar_t__ cidxMprintf (int*,char*,char const*,char const*) ;
 int cidxParseSQL (int *,TYPE_1__*,char const*) ;
 int * cidxPrepare (int*,int *,char*,char const*) ;
 char* cidxStrdup (int*,char const*) ;
 void* sqlite3_column_int (int *,int) ;
 scalar_t__ sqlite3_column_text (int *,int) ;
 int sqlite3_free (char*) ;
 scalar_t__ sqlite3_realloc (TYPE_1__*,int) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static int cidxLookupIndex(
  CidxCursor *pCsr,
  const char *zIdx,
  CidxIndex **ppIdx,
  char **pzTab
){
  int rc = SQLITE_OK;
  char *zTab = 0;
  CidxIndex *pIdx = 0;

  sqlite3_stmt *pFindTab = 0;
  sqlite3_stmt *pInfo = 0;


  pFindTab = cidxPrepare(&rc, pCsr,
      "SELECT tbl_name, sql FROM sqlite_master WHERE name=%Q AND type='index'",
      zIdx
  );
  if( rc==SQLITE_OK && sqlite3_step(pFindTab)==SQLITE_ROW ){
    const char *zSql = (const char*)sqlite3_column_text(pFindTab, 1);
    zTab = cidxStrdup(&rc, (const char*)sqlite3_column_text(pFindTab, 0));

    pInfo = cidxPrepare(&rc, pCsr, "PRAGMA index_xinfo(%Q)", zIdx);
    if( rc==SQLITE_OK ){
      int nAlloc = 0;
      int iCol = 0;

      while( sqlite3_step(pInfo)==SQLITE_ROW ){
        const char *zName = (const char*)sqlite3_column_text(pInfo, 2);
        const char *zColl = (const char*)sqlite3_column_text(pInfo, 4);
        CidxColumn *p;
        if( zName==0 ) zName = "rowid";
        if( iCol==nAlloc ){
          int nByte = sizeof(CidxIndex) + sizeof(CidxColumn)*(nAlloc+8);
          pIdx = (CidxIndex*)sqlite3_realloc(pIdx, nByte);
          nAlloc += 8;
        }
        p = &pIdx->aCol[iCol++];
        p->bDesc = sqlite3_column_int(pInfo, 3);
        p->bKey = sqlite3_column_int(pInfo, 5);
        if( zSql==0 || p->bKey==0 ){
          p->zExpr = cidxMprintf(&rc, "\"%w\" COLLATE %s",zName,zColl);
        }else{
          p->zExpr = 0;
        }
        pIdx->nCol = iCol;
        pIdx->zWhere = 0;
      }
      cidxFinalize(&rc, pInfo);
    }

    if( rc==SQLITE_OK && zSql ){
      rc = cidxParseSQL(pCsr, pIdx, zSql);
    }
  }

  cidxFinalize(&rc, pFindTab);
  if( rc==SQLITE_OK && zTab==0 ){
    rc = SQLITE_ERROR;
  }

  if( rc!=SQLITE_OK ){
    sqlite3_free(zTab);
    cidxFreeIndex(pIdx);
  }else{
    *pzTab = zTab;
    *ppIdx = pIdx;
  }

  return rc;
}

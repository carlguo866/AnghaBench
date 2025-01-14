
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int sqlite3 ;
typedef scalar_t__ i64 ;
struct TYPE_3__ {void* nRowEst; int zName; int zDb; } ;
typedef TYPE_1__ Rtree ;


 void* MAX (scalar_t__,int ) ;
 void* RTREE_DEFAULT_ROWEST ;
 int RTREE_MIN_ROWEST ;
 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 scalar_t__ sqlite3_column_int64 (int *,int ) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char const*,int ,int ) ;
 int sqlite3_prepare_v2 (int *,char*,int,int **,int ) ;
 scalar_t__ sqlite3_step (int *) ;
 int sqlite3_table_column_metadata (int *,int ,char*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int rtreeQueryStat1(sqlite3 *db, Rtree *pRtree){
  const char *zFmt = "SELECT stat FROM %Q.sqlite_stat1 WHERE tbl = '%q_rowid'";
  char *zSql;
  sqlite3_stmt *p;
  int rc;
  i64 nRow = 0;

  rc = sqlite3_table_column_metadata(
      db, pRtree->zDb, "sqlite_stat1",0,0,0,0,0,0
  );
  if( rc!=SQLITE_OK ){
    pRtree->nRowEst = RTREE_DEFAULT_ROWEST;
    return rc==SQLITE_ERROR ? SQLITE_OK : rc;
  }
  zSql = sqlite3_mprintf(zFmt, pRtree->zDb, pRtree->zName);
  if( zSql==0 ){
    rc = SQLITE_NOMEM;
  }else{
    rc = sqlite3_prepare_v2(db, zSql, -1, &p, 0);
    if( rc==SQLITE_OK ){
      if( sqlite3_step(p)==SQLITE_ROW ) nRow = sqlite3_column_int64(p, 0);
      rc = sqlite3_finalize(p);
    }else if( rc!=SQLITE_NOMEM ){
      rc = SQLITE_OK;
    }

    if( rc==SQLITE_OK ){
      if( nRow==0 ){
        pRtree->nRowEst = RTREE_DEFAULT_ROWEST;
      }else{
        pRtree->nRowEst = MAX(nRow, RTREE_MIN_ROWEST);
      }
    }
    sqlite3_free(zSql);
  }

  return rc;
}

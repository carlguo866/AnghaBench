
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_14__ {scalar_t__ eDetail; int nCol; } ;
struct TYPE_10__ {scalar_t__ pVtab; } ;
struct TYPE_13__ {int pExpr; TYPE_3__* pSorter; TYPE_1__ base; } ;
struct TYPE_12__ {int* aIdx; int * aPoslist; int iRowid; } ;
struct TYPE_11__ {TYPE_5__* pConfig; } ;
typedef TYPE_2__ Fts5Table ;
typedef TYPE_3__ Fts5Sorter ;
typedef int Fts5PoslistPopulator ;
typedef TYPE_4__ Fts5Cursor ;
typedef int Fts5Context ;
typedef TYPE_5__ Fts5Config ;


 int CsrFlagClear (TYPE_4__*,int ) ;
 scalar_t__ CsrFlagTest (TYPE_4__*,int ) ;
 int FTS5CSR_REQUIRE_POSLIST ;
 scalar_t__ FTS5_DETAIL_FULL ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int fts5ApiColumnText (int *,int,char const**,int*) ;
 int sqlite3Fts5ExprCheckPoslists (int ,int ) ;
 int * sqlite3Fts5ExprClearPoslists (int ,int) ;
 int sqlite3Fts5ExprPopulatePoslists (TYPE_5__*,int ,int *,int,char const*,int) ;
 int sqlite3Fts5ExprPoslist (int ,int,int const**) ;
 int sqlite3_free (int *) ;

__attribute__((used)) static int fts5CsrPoslist(
  Fts5Cursor *pCsr,
  int iPhrase,
  const u8 **pa,
  int *pn
){
  Fts5Config *pConfig = ((Fts5Table*)(pCsr->base.pVtab))->pConfig;
  int rc = SQLITE_OK;
  int bLive = (pCsr->pSorter==0);

  if( CsrFlagTest(pCsr, FTS5CSR_REQUIRE_POSLIST) ){

    if( pConfig->eDetail!=FTS5_DETAIL_FULL ){
      Fts5PoslistPopulator *aPopulator;
      int i;
      aPopulator = sqlite3Fts5ExprClearPoslists(pCsr->pExpr, bLive);
      if( aPopulator==0 ) rc = SQLITE_NOMEM;
      for(i=0; i<pConfig->nCol && rc==SQLITE_OK; i++){
        int n; const char *z;
        rc = fts5ApiColumnText((Fts5Context*)pCsr, i, &z, &n);
        if( rc==SQLITE_OK ){
          rc = sqlite3Fts5ExprPopulatePoslists(
              pConfig, pCsr->pExpr, aPopulator, i, z, n
          );
        }
      }
      sqlite3_free(aPopulator);

      if( pCsr->pSorter ){
        sqlite3Fts5ExprCheckPoslists(pCsr->pExpr, pCsr->pSorter->iRowid);
      }
    }
    CsrFlagClear(pCsr, FTS5CSR_REQUIRE_POSLIST);
  }

  if( pCsr->pSorter && pConfig->eDetail==FTS5_DETAIL_FULL ){
    Fts5Sorter *pSorter = pCsr->pSorter;
    int i1 = (iPhrase==0 ? 0 : pSorter->aIdx[iPhrase-1]);
    *pn = pSorter->aIdx[iPhrase] - i1;
    *pa = &pSorter->aPoslist[i1];
  }else{
    *pn = sqlite3Fts5ExprPoslist(pCsr->pExpr, iPhrase, pa);
  }

  return rc;
}

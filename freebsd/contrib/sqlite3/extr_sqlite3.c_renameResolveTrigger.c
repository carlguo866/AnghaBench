
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_24__ {TYPE_1__* aDb; } ;
typedef TYPE_4__ sqlite3 ;
typedef int sSrc ;
typedef int sNC ;
struct TYPE_25__ {scalar_t__ pUpsertTargetWhere; scalar_t__ pUpsertWhere; int * pUpsertSet; int * pUpsertTarget; TYPE_8__* pUpsertSrc; } ;
typedef TYPE_5__ Upsert ;
struct TYPE_26__ {TYPE_5__* pUpsert; int * pExprList; scalar_t__ pWhere; scalar_t__ zTarget; scalar_t__ pSelect; struct TYPE_26__* pNext; } ;
typedef TYPE_6__ TriggerStep ;
struct TYPE_27__ {int pTabSchema; TYPE_6__* step_list; scalar_t__ pWhen; int op; int table; } ;
typedef TYPE_7__ Trigger ;
typedef int Table ;
struct TYPE_29__ {int rc; scalar_t__ nErr; int * pTriggerTab; int eTriggerOp; TYPE_7__* pNewTrigger; TYPE_4__* db; } ;
struct TYPE_23__ {TYPE_5__* pUpsert; } ;
struct TYPE_28__ {int nSrc; struct TYPE_28__* pSrcList; scalar_t__ ncFlags; TYPE_3__ uNC; TYPE_2__* a; TYPE_9__* pParse; } ;
struct TYPE_22__ {int * pTab; scalar_t__ zName; } ;
struct TYPE_21__ {int zDbSName; } ;
typedef TYPE_8__ SrcList ;
typedef TYPE_9__ Parse ;
typedef TYPE_8__ NameContext ;
typedef int ExprList ;


 scalar_t__ ALWAYS (int *) ;
 scalar_t__ NC_UUpsert ;
 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int assert (int) ;
 int memset (TYPE_8__*,int ,int) ;
 int * sqlite3FindTable (TYPE_4__*,int ,int ) ;
 int * sqlite3LocateTable (TYPE_9__*,int ,scalar_t__,char const*) ;
 int sqlite3ResolveExprListNames (TYPE_8__*,int *) ;
 int sqlite3ResolveExprNames (TYPE_8__*,scalar_t__) ;
 size_t sqlite3SchemaToIndex (TYPE_4__*,int) ;
 int sqlite3SelectPrep (TYPE_9__*,scalar_t__,TYPE_8__*) ;
 int sqlite3ViewGetColumnNames (TYPE_9__*,int *) ;

__attribute__((used)) static int renameResolveTrigger(Parse *pParse, const char *zDb){
  sqlite3 *db = pParse->db;
  Trigger *pNew = pParse->pNewTrigger;
  TriggerStep *pStep;
  NameContext sNC;
  int rc = SQLITE_OK;

  memset(&sNC, 0, sizeof(sNC));
  sNC.pParse = pParse;
  assert( pNew->pTabSchema );
  pParse->pTriggerTab = sqlite3FindTable(db, pNew->table,
      db->aDb[sqlite3SchemaToIndex(db, pNew->pTabSchema)].zDbSName
  );
  pParse->eTriggerOp = pNew->op;


  if( ALWAYS(pParse->pTriggerTab) ){
    rc = sqlite3ViewGetColumnNames(pParse, pParse->pTriggerTab);
  }


  if( rc==SQLITE_OK && pNew->pWhen ){
    rc = sqlite3ResolveExprNames(&sNC, pNew->pWhen);
  }

  for(pStep=pNew->step_list; rc==SQLITE_OK && pStep; pStep=pStep->pNext){
    if( pStep->pSelect ){
      sqlite3SelectPrep(pParse, pStep->pSelect, &sNC);
      if( pParse->nErr ) rc = pParse->rc;
    }
    if( rc==SQLITE_OK && pStep->zTarget ){
      Table *pTarget = sqlite3LocateTable(pParse, 0, pStep->zTarget, zDb);
      if( pTarget==0 ){
        rc = SQLITE_ERROR;
      }else if( SQLITE_OK==(rc = sqlite3ViewGetColumnNames(pParse, pTarget)) ){
        SrcList sSrc;
        memset(&sSrc, 0, sizeof(sSrc));
        sSrc.nSrc = 1;
        sSrc.a[0].zName = pStep->zTarget;
        sSrc.a[0].pTab = pTarget;
        sNC.pSrcList = &sSrc;
        if( pStep->pWhere ){
          rc = sqlite3ResolveExprNames(&sNC, pStep->pWhere);
        }
        if( rc==SQLITE_OK ){
          rc = sqlite3ResolveExprListNames(&sNC, pStep->pExprList);
        }
        assert( !pStep->pUpsert || (!pStep->pWhere && !pStep->pExprList) );
        if( pStep->pUpsert ){
          Upsert *pUpsert = pStep->pUpsert;
          assert( rc==SQLITE_OK );
          pUpsert->pUpsertSrc = &sSrc;
          sNC.uNC.pUpsert = pUpsert;
          sNC.ncFlags = NC_UUpsert;
          rc = sqlite3ResolveExprListNames(&sNC, pUpsert->pUpsertTarget);
          if( rc==SQLITE_OK ){
            ExprList *pUpsertSet = pUpsert->pUpsertSet;
            rc = sqlite3ResolveExprListNames(&sNC, pUpsertSet);
          }
          if( rc==SQLITE_OK ){
            rc = sqlite3ResolveExprNames(&sNC, pUpsert->pUpsertWhere);
          }
          if( rc==SQLITE_OK ){
            rc = sqlite3ResolveExprNames(&sNC, pUpsert->pUpsertTargetWhere);
          }
          sNC.ncFlags = 0;
        }
        sNC.pSrcList = 0;
      }
    }
  }
  return rc;
}

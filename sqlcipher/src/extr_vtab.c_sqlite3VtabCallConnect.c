
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {int aModule; } ;
typedef TYPE_2__ sqlite3 ;
struct TYPE_19__ {char** azModuleArg; } ;
typedef TYPE_3__ Table ;
struct TYPE_21__ {TYPE_1__* pModule; } ;
struct TYPE_20__ {int rc; TYPE_2__* db; } ;
struct TYPE_17__ {int xConnect; } ;
typedef TYPE_4__ Parse ;
typedef TYPE_5__ Module ;


 int IsVirtual (TYPE_3__*) ;
 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int assert (TYPE_3__*) ;
 int sqlite3DbFree (TYPE_2__*,char*) ;
 int sqlite3ErrorMsg (TYPE_4__*,char*,char const*) ;
 scalar_t__ sqlite3GetVTable (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ sqlite3HashFind (int *,char const*) ;
 int vtabCallConstructor (TYPE_2__*,TYPE_3__*,TYPE_5__*,int ,char**) ;

int sqlite3VtabCallConnect(Parse *pParse, Table *pTab){
  sqlite3 *db = pParse->db;
  const char *zMod;
  Module *pMod;
  int rc;

  assert( pTab );
  if( !IsVirtual(pTab) || sqlite3GetVTable(db, pTab) ){
    return SQLITE_OK;
  }


  zMod = pTab->azModuleArg[0];
  pMod = (Module*)sqlite3HashFind(&db->aModule, zMod);

  if( !pMod ){
    const char *zModule = pTab->azModuleArg[0];
    sqlite3ErrorMsg(pParse, "no such module: %s", zModule);
    rc = SQLITE_ERROR;
  }else{
    char *zErr = 0;
    rc = vtabCallConstructor(db, pTab, pMod, pMod->pModule->xConnect, &zErr);
    if( rc!=SQLITE_OK ){
      sqlite3ErrorMsg(pParse, "%s", zErr);
      pParse->rc = rc;
    }
    sqlite3DbFree(db, zErr);
  }

  return rc;
}

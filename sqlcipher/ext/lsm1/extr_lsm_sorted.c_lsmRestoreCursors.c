
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* pCsr; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_7__ {struct TYPE_7__* pNext; } ;
typedef TYPE_2__ MultiCursor ;


 int LSM_OK ;
 int mcursorRestore (TYPE_1__*,TYPE_2__*) ;

int lsmRestoreCursors(lsm_db *pDb){
  int rc = LSM_OK;
  MultiCursor *pCsr;

  for(pCsr=pDb->pCsr; rc==LSM_OK && pCsr; pCsr=pCsr->pNext){
    rc = mcursorRestore(pDb, pCsr);
  }
  return rc;
}

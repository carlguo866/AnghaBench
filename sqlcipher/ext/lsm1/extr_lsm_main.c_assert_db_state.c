
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pCsr; scalar_t__ nTransOpen; scalar_t__ iReader; scalar_t__ bRoTrans; scalar_t__ pClient; } ;
typedef TYPE_1__ lsm_db ;


 int assert (int) ;

__attribute__((used)) static void assert_db_state(lsm_db *pDb){






  assert( (pDb->pCsr!=0||pDb->nTransOpen>0)==(pDb->iReader>=0||pDb->bRoTrans) );

  assert( (pDb->iReader<0 && pDb->bRoTrans==0) || pDb->pClient!=0 );

  assert( pDb->nTransOpen>=0 );
}

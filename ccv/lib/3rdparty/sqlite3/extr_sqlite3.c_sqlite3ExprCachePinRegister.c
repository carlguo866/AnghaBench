
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct yColCache {int iReg; scalar_t__ tempReg; } ;
struct TYPE_3__ {int nColCache; struct yColCache* aColCache; } ;
typedef TYPE_1__ Parse ;



__attribute__((used)) static void sqlite3ExprCachePinRegister(Parse *pParse, int iReg){
  int i;
  struct yColCache *p;
  for(i=0, p=pParse->aColCache; i<pParse->nColCache; i++, p++){
    if( p->iReg==iReg ){
      p->tempReg = 0;
    }
  }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_11__ {TYPE_1__* pRoot; TYPE_3__** apExprPhrase; } ;
struct TYPE_10__ {scalar_t__ bEof; scalar_t__ iRowid; } ;
struct TYPE_8__ {int n; int * p; } ;
struct TYPE_9__ {TYPE_2__ poslist; TYPE_4__* pNode; } ;
struct TYPE_7__ {scalar_t__ iRowid; } ;
typedef TYPE_3__ Fts5ExprPhrase ;
typedef TYPE_4__ Fts5ExprNode ;
typedef TYPE_5__ Fts5Expr ;



int sqlite3Fts5ExprPoslist(Fts5Expr *pExpr, int iPhrase, const u8 **pa){
  int nRet;
  Fts5ExprPhrase *pPhrase = pExpr->apExprPhrase[iPhrase];
  Fts5ExprNode *pNode = pPhrase->pNode;
  if( pNode->bEof==0 && pNode->iRowid==pExpr->pRoot->iRowid ){
    *pa = pPhrase->poslist.p;
    nRet = pPhrase->poslist.n;
  }else{
    *pa = 0;
    nRet = 0;
  }
  return nRet;
}

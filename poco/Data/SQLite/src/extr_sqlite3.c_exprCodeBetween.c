
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_19__ {TYPE_2__* pList; } ;
struct TYPE_20__ {int flags; TYPE_3__ x; struct TYPE_20__* pRight; struct TYPE_20__* pLeft; int op; } ;
struct TYPE_18__ {TYPE_1__* a; } ;
struct TYPE_17__ {TYPE_4__* pExpr; } ;
typedef int Parse ;
typedef TYPE_4__ Expr ;


 int EP_FromJoin ;
 int EP_xIsSelect ;
 int ExprHasProperty (TYPE_4__*,int ) ;
 int TK_AND ;
 int TK_GE ;
 int TK_LE ;
 int assert (int) ;
 int exprCodeVector (int *,TYPE_4__*,int*) ;
 int exprNodeCopy (TYPE_4__*,TYPE_4__*) ;
 int exprToRegister (TYPE_4__*,int ) ;
 int memset (TYPE_4__*,int ,int) ;
 int sqlite3ExprCodeTarget (int *,TYPE_4__*,int) ;
 void sqlite3ExprIfFalse (int *,TYPE_4__*,int,int) ;
 void sqlite3ExprIfTrue (int *,TYPE_4__*,int,int) ;
 int sqlite3ReleaseTempReg (int *,int) ;
 int testcase (int) ;

__attribute__((used)) static void exprCodeBetween(
  Parse *pParse,
  Expr *pExpr,
  int dest,
  void (*xJump)(Parse*,Expr*,int,int),
  int jumpIfNull
){
 Expr exprAnd;
  Expr compLeft;
  Expr compRight;
  Expr exprX;
  int regFree1 = 0;

  memset(&compLeft, 0, sizeof(Expr));
  memset(&compRight, 0, sizeof(Expr));
  memset(&exprAnd, 0, sizeof(Expr));

  assert( !ExprHasProperty(pExpr, EP_xIsSelect) );
  exprNodeCopy(&exprX, pExpr->pLeft);
  exprAnd.op = TK_AND;
  exprAnd.pLeft = &compLeft;
  exprAnd.pRight = &compRight;
  compLeft.op = TK_GE;
  compLeft.pLeft = &exprX;
  compLeft.pRight = pExpr->x.pList->a[0].pExpr;
  compRight.op = TK_LE;
  compRight.pLeft = &exprX;
  compRight.pRight = pExpr->x.pList->a[1].pExpr;
  exprToRegister(&exprX, exprCodeVector(pParse, &exprX, &regFree1));
  if( xJump ){
    xJump(pParse, &exprAnd, dest, jumpIfNull);
  }else{





    exprX.flags |= EP_FromJoin;
    sqlite3ExprCodeTarget(pParse, &exprAnd, dest);
  }
  sqlite3ReleaseTempReg(pParse, regFree1);


  testcase( xJump==sqlite3ExprIfTrue && jumpIfNull==0 && regFree1==0 );
  testcase( xJump==sqlite3ExprIfTrue && jumpIfNull==0 && regFree1!=0 );
  testcase( xJump==sqlite3ExprIfTrue && jumpIfNull!=0 && regFree1==0 );
  testcase( xJump==sqlite3ExprIfTrue && jumpIfNull!=0 && regFree1!=0 );
  testcase( xJump==sqlite3ExprIfFalse && jumpIfNull==0 && regFree1==0 );
  testcase( xJump==sqlite3ExprIfFalse && jumpIfNull==0 && regFree1!=0 );
  testcase( xJump==sqlite3ExprIfFalse && jumpIfNull!=0 && regFree1==0 );
  testcase( xJump==sqlite3ExprIfFalse && jumpIfNull!=0 && regFree1!=0 );
  testcase( xJump==0 );
}

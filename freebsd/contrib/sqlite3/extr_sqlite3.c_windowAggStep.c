
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_15__ ;


typedef int u8 ;
struct TYPE_20__ {int * pParse; } ;
typedef TYPE_4__ WindowCodeArg ;
struct TYPE_21__ {scalar_t__ eStart; int iArgCol; int iEphCsr; scalar_t__ regStartRowid; int regApp; int csrApp; int regAccum; scalar_t__ bExprArgs; TYPE_3__* pOwner; scalar_t__ pFilter; TYPE_7__* pFunc; struct TYPE_21__* pNextWin; } ;
typedef TYPE_5__ Window ;
struct TYPE_22__ {scalar_t__ opcode; int p1; } ;
typedef TYPE_6__ VdbeOp ;
typedef int Vdbe ;
struct TYPE_23__ {scalar_t__ zName; int funcFlags; scalar_t__ xSFunc; } ;
struct TYPE_18__ {TYPE_15__* pList; } ;
struct TYPE_19__ {TYPE_2__ x; } ;
struct TYPE_17__ {int pExpr; } ;
struct TYPE_16__ {int nExpr; TYPE_1__* a; } ;
typedef int Parse ;
typedef TYPE_7__ FuncDef ;
typedef int CollSeq ;


 int OP_AddImm ;
 scalar_t__ OP_AggInverse ;
 scalar_t__ OP_AggStep ;
 int OP_CollSeq ;
 scalar_t__ OP_Column ;
 int OP_Delete ;
 int OP_IdxInsert ;
 scalar_t__ OP_IfNot ;
 int OP_IsNull ;
 scalar_t__ OP_MakeRecord ;
 int OP_SCopy ;
 int OP_SeekGE ;
 int P4_COLLSEQ ;
 int P4_FUNCDEF ;
 int SQLITE_FUNC_MINMAX ;
 int SQLITE_FUNC_NEEDCOLL ;
 scalar_t__ TK_UNBOUNDED ;
 int VdbeCoverage (int *) ;
 int VdbeCoverageNeverTaken (int *) ;
 int assert (int) ;
 scalar_t__ first_valueName ;
 scalar_t__ noopStepFunc ;
 scalar_t__ nth_valueName ;
 int sqlite3ExprCodeExprList (int *,TYPE_15__*,int,int ,int ) ;
 int * sqlite3ExprNNCollSeq (int *,int ) ;
 int sqlite3GetTempRange (int *,int) ;
 int sqlite3GetTempReg (int *) ;
 int * sqlite3GetVdbe (int *) ;
 int sqlite3ReleaseTempRange (int *,int,int) ;
 int sqlite3ReleaseTempReg (int *,int) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,scalar_t__,int,int,int) ;
 int sqlite3VdbeAddOp4 (int *,int ,int ,int ,int ,char const*,int ) ;
 int sqlite3VdbeAddOp4Int (int *,int ,int,int ,int,int) ;
 int sqlite3VdbeAppendP4 (int *,TYPE_7__*,int ) ;
 int sqlite3VdbeChangeP5 (int *,int ) ;
 int sqlite3VdbeCurrentAddr (int *) ;
 TYPE_6__* sqlite3VdbeGetOp (int *,int) ;
 int sqlite3VdbeJumpHere (int *,int) ;
 scalar_t__ sqlite3WindowCompare (int *,TYPE_5__*,TYPE_5__*,int ) ;
 int windowArgCount (TYPE_5__*) ;

__attribute__((used)) static void windowAggStep(
  WindowCodeArg *p,
  Window *pMWin,
  int csr,
  int bInverse,
  int reg
){
  Parse *pParse = p->pParse;
  Vdbe *v = sqlite3GetVdbe(pParse);
  Window *pWin;
  for(pWin=pMWin; pWin; pWin=pWin->pNextWin){
    FuncDef *pFunc = pWin->pFunc;
    int regArg;
    int nArg = pWin->bExprArgs ? 0 : windowArgCount(pWin);
    int i;

    assert( bInverse==0 || pWin->eStart!=TK_UNBOUNDED );



    assert( pWin==pMWin || sqlite3WindowCompare(pParse,pWin,pMWin,0)==0 );

    for(i=0; i<nArg; i++){
      if( i!=1 || pFunc->zName!=nth_valueName ){
        sqlite3VdbeAddOp3(v, OP_Column, csr, pWin->iArgCol+i, reg+i);
      }else{
        sqlite3VdbeAddOp3(v, OP_Column, pMWin->iEphCsr, pWin->iArgCol+i, reg+i);
      }
    }
    regArg = reg;

    if( pMWin->regStartRowid==0
     && (pFunc->funcFlags & SQLITE_FUNC_MINMAX)
     && (pWin->eStart!=TK_UNBOUNDED)
    ){
      int addrIsNull = sqlite3VdbeAddOp1(v, OP_IsNull, regArg);
      VdbeCoverage(v);
      if( bInverse==0 ){
        sqlite3VdbeAddOp2(v, OP_AddImm, pWin->regApp+1, 1);
        sqlite3VdbeAddOp2(v, OP_SCopy, regArg, pWin->regApp);
        sqlite3VdbeAddOp3(v, OP_MakeRecord, pWin->regApp, 2, pWin->regApp+2);
        sqlite3VdbeAddOp2(v, OP_IdxInsert, pWin->csrApp, pWin->regApp+2);
      }else{
        sqlite3VdbeAddOp4Int(v, OP_SeekGE, pWin->csrApp, 0, regArg, 1);
        VdbeCoverageNeverTaken(v);
        sqlite3VdbeAddOp1(v, OP_Delete, pWin->csrApp);
        sqlite3VdbeJumpHere(v, sqlite3VdbeCurrentAddr(v)-2);
      }
      sqlite3VdbeJumpHere(v, addrIsNull);
    }else if( pWin->regApp ){
      assert( pFunc->zName==nth_valueName
           || pFunc->zName==first_valueName
      );
      assert( bInverse==0 || bInverse==1 );
      sqlite3VdbeAddOp2(v, OP_AddImm, pWin->regApp+1-bInverse, 1);
    }else if( pFunc->xSFunc!=noopStepFunc ){
      int addrIf = 0;
      if( pWin->pFilter ){
        int regTmp;
        assert( pWin->bExprArgs || !nArg ||nArg==pWin->pOwner->x.pList->nExpr );
        assert( pWin->bExprArgs || nArg ||pWin->pOwner->x.pList==0 );
        regTmp = sqlite3GetTempReg(pParse);
        sqlite3VdbeAddOp3(v, OP_Column, csr, pWin->iArgCol+nArg,regTmp);
        addrIf = sqlite3VdbeAddOp3(v, OP_IfNot, regTmp, 0, 1);
        VdbeCoverage(v);
        sqlite3ReleaseTempReg(pParse, regTmp);
      }

      if( pWin->bExprArgs ){
        int iStart = sqlite3VdbeCurrentAddr(v);
        VdbeOp *pOp, *pEnd;

        nArg = pWin->pOwner->x.pList->nExpr;
        regArg = sqlite3GetTempRange(pParse, nArg);
        sqlite3ExprCodeExprList(pParse, pWin->pOwner->x.pList, regArg, 0, 0);

        pEnd = sqlite3VdbeGetOp(v, -1);
        for(pOp=sqlite3VdbeGetOp(v, iStart); pOp<=pEnd; pOp++){
          if( pOp->opcode==OP_Column && pOp->p1==pWin->iEphCsr ){
            pOp->p1 = csr;
          }
        }
      }
      if( pFunc->funcFlags & SQLITE_FUNC_NEEDCOLL ){
        CollSeq *pColl;
        assert( nArg>0 );
        pColl = sqlite3ExprNNCollSeq(pParse, pWin->pOwner->x.pList->a[0].pExpr);
        sqlite3VdbeAddOp4(v, OP_CollSeq, 0,0,0, (const char*)pColl, P4_COLLSEQ);
      }
      sqlite3VdbeAddOp3(v, bInverse? OP_AggInverse : OP_AggStep,
                        bInverse, regArg, pWin->regAccum);
      sqlite3VdbeAppendP4(v, pFunc, P4_FUNCDEF);
      sqlite3VdbeChangeP5(v, (u8)nArg);
      if( pWin->bExprArgs ){
        sqlite3ReleaseTempRange(pParse, regArg, nArg);
      }
      if( addrIf ) sqlite3VdbeJumpHere(v, addrIf);
    }
  }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int jointype; } ;
struct SrcList_item {scalar_t__ iCursor; TYPE_3__* pTab; TYPE_1__ fg; } ;
struct TYPE_12__ {size_t leftColumn; } ;
struct TYPE_13__ {scalar_t__ leftCursor; int eOperator; int prereqRight; TYPE_7__* pExpr; TYPE_4__ u; } ;
typedef TYPE_5__ WhereTerm ;
struct TYPE_14__ {scalar_t__ op; } ;
struct TYPE_11__ {TYPE_2__* aCol; } ;
struct TYPE_10__ {char affinity; } ;
typedef int Bitmask ;


 int EP_FromJoin ;
 int ExprHasProperty (TYPE_7__*,int ) ;
 int JT_LEFT ;
 scalar_t__ TK_IS ;
 int WO_EQ ;
 int WO_IS ;
 int sqlite3IndexAffinityOk (TYPE_7__*,char) ;
 int testcase (int) ;

__attribute__((used)) static int termCanDriveIndex(
  WhereTerm *pTerm,
  struct SrcList_item *pSrc,
  Bitmask notReady
){
  char aff;
  if( pTerm->leftCursor!=pSrc->iCursor ) return 0;
  if( (pTerm->eOperator & (WO_EQ|WO_IS))==0 ) return 0;
  if( (pSrc->fg.jointype & JT_LEFT)
   && !ExprHasProperty(pTerm->pExpr, EP_FromJoin)
   && (pTerm->eOperator & WO_IS)
  ){



    return 0;
  }
  if( (pTerm->prereqRight & notReady)!=0 ) return 0;
  if( pTerm->u.leftColumn<0 ) return 0;
  aff = pSrc->pTab->aCol[pTerm->u.leftColumn].affinity;
  if( !sqlite3IndexAffinityOk(pTerm->pExpr, aff) ) return 0;
  testcase( pTerm->pExpr->op==TK_IS );
  return 1;
}

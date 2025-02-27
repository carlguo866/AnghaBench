
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* p; } ;
struct TYPE_7__ {int p4type; TYPE_1__ p4; } ;
typedef TYPE_2__ VdbeOp ;
struct TYPE_8__ {int nOp; TYPE_2__* aOp; TYPE_5__* db; } ;
typedef TYPE_3__ Vdbe ;
struct TYPE_9__ {scalar_t__ mallocFailed; } ;


 int P4_INT32 ;
 int P4_NOTUSED ;
 int P4_VTAB ;
 int assert (int) ;
 int freeP4 (TYPE_5__*,int,void*) ;

void sqlite3VdbeAppendP4(Vdbe *p, void *pP4, int n){
  VdbeOp *pOp;
  assert( n!=P4_INT32 && n!=P4_VTAB );
  assert( n<=0 );
  if( p->db->mallocFailed ){
    freeP4(p->db, n, pP4);
  }else{
    assert( pP4!=0 );
    assert( p->nOp>0 );
    pOp = &p->aOp[p->nOp-1];
    assert( pOp->p4type==P4_NOTUSED );
    pOp->p4type = n;
    pOp->p4.p = pP4;
  }
}

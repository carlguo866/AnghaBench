
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int yDbMask ;
struct TYPE_7__ {int lockMask; TYPE_2__* db; int btreeMask; } ;
typedef TYPE_3__ Vdbe ;
struct TYPE_6__ {int nDb; TYPE_1__* aDb; } ;
struct TYPE_5__ {int pBt; } ;


 int DbMaskSet (int ,int) ;
 int assert (int) ;
 scalar_t__ sqlite3BtreeSharable (int ) ;

void sqlite3VdbeUsesBtree(Vdbe *p, int i){
  assert( i>=0 && i<p->db->nDb && i<(int)sizeof(yDbMask)*8 );
  assert( i<(int)sizeof(p->btreeMask)*8 );
  DbMaskSet(p->btreeMask, i);
  if( i!=1 && sqlite3BtreeSharable(p->db->aDb[i].pBt) ){
    DbMaskSet(p->lockMask, i);
  }
}

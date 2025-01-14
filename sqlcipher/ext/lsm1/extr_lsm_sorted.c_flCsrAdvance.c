
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ iId; int iBlk; } ;
struct TYPE_10__ {int flags; int iFree; TYPE_3__* pDb; } ;
struct TYPE_9__ {TYPE_2__* pWorker; } ;
struct TYPE_7__ {int nEntry; TYPE_5__* aEntry; } ;
struct TYPE_8__ {TYPE_1__ freelist; } ;
typedef TYPE_4__ MultiCursor ;
typedef TYPE_5__ FreelistEntry ;


 int CURSOR_FLUSH_FREELIST ;
 int assert (int) ;

__attribute__((used)) static void flCsrAdvance(MultiCursor *pCsr){
  assert( pCsr->flags & CURSOR_FLUSH_FREELIST );
  if( pCsr->iFree % 2 ){
    pCsr->iFree++;
  }else{
    int nEntry = pCsr->pDb->pWorker->freelist.nEntry;
    FreelistEntry *aEntry = pCsr->pDb->pWorker->freelist.aEntry;

    int i = nEntry - 1 - (pCsr->iFree / 2);



    if( aEntry[i].iId<0 ){
      while( 1 ){
        if( i==0 || aEntry[i-1].iBlk!=aEntry[i].iBlk-1 ){
          pCsr->iFree--;
          break;
        }
        if( aEntry[i-1].iId>=0 ) break;
        pCsr->iFree += 2;
        i--;
      }
    }
    pCsr->iFree += 2;
  }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ iFirst; scalar_t__ iLastPg; TYPE_1__* pRedirect; } ;
struct TYPE_10__ {scalar_t__ n; } ;
struct TYPE_11__ {TYPE_1__ redirect; } ;
typedef TYPE_2__ Snapshot ;
typedef TYPE_3__ Segment ;
typedef int FileSystem ;


 int LSM_OK ;
 int assert (int) ;
 int fsBlockNext (int *,TYPE_3__*,int,int*) ;
 int fsFreeBlock (int *,TYPE_2__*,TYPE_3__*,int) ;
 scalar_t__ fsLastPageOnBlock (int *,int) ;
 int fsPageToBlock (int *,scalar_t__) ;
 int memset (TYPE_3__*,int ,int) ;

int lsmFsSortedDelete(
  FileSystem *pFS,
  Snapshot *pSnapshot,
  int bZero,
  Segment *pDel
){
  if( pDel->iFirst ){
    int rc = LSM_OK;

    int iBlk;
    int iLastBlk;

    iBlk = fsPageToBlock(pFS, pDel->iFirst);
    iLastBlk = fsPageToBlock(pFS, pDel->iLastPg);


    while( iBlk && rc==LSM_OK ){
      int iNext = 0;
      if( iBlk!=iLastBlk ){
        rc = fsBlockNext(pFS, pDel, iBlk, &iNext);
      }else if( bZero==0 && pDel->iLastPg!=fsLastPageOnBlock(pFS, iLastBlk) ){
        break;
      }
      rc = fsFreeBlock(pFS, pSnapshot, pDel, iBlk);
      iBlk = iNext;
    }

    if( pDel->pRedirect ){
      assert( pDel->pRedirect==&pSnapshot->redirect );
      pSnapshot->redirect.n = 0;
    }

    if( bZero ) memset(pDel, 0, sizeof(Segment));
  }
  return LSM_OK;
}
